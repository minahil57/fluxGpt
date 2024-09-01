import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import '../../../generated/l10n.dart';
import '../../../services/open_ai_service.dart';
import '../entities/text_use_case.dart';
import 'text_generate_data_state.dart';

part 'text_generate_event.dart';

part 'text_generate_state.dart';

part 'text_generate_bloc.freezed.dart';

class TextGenerateBloc extends Bloc<TextGenerateEvent, TextGenerateState> {
  final OpenAIService _openAIService;

  TextGenerateBloc({
    required OpenAIService openAIService,
    required List<TextUseCase> textUseCases,
  })  : _openAIService = openAIService,
        super(
          TextGenerateState.initial(
            data: TextGenerateDataState(
              selectedUseCase: textUseCases.first,
              useCases: textUseCases,
            ),
          ),
        ) {
    // on<_Started>((_, emit) {
    //   emit(TextGenerateState.success(
    //       data: state.data.copyWith(
    //     content: 'test',
    //     isCompleteAnimatedText: false,
    //   )));
    // });
    on<_UseCaseChanged>(_onUseCaseChanged);
    on<_GenerateContent>(
      _onGenerateContent,
      transformer: (events, mapper) {
        return events
            .debounceTime(const Duration(milliseconds: 500))
            .asyncExpand(mapper);
      },
    );
    on<_ChangeToEditMode>(_onChangeToEditMode);
    on<_ChangeToViewMode>(_onChangeToViewMode);
    on<_TextChanged>(_onTextChanged);
    on<_CompleteAnimatedText>(_onCompleteAnimatedText);
    on<_CopyContent>(_onCopyContent);
  }

  FutureOr<void> _onUseCaseChanged(
    _UseCaseChanged event,
    Emitter<TextGenerateState> emit,
  ) {
    emit(
      TextGenerateState.initial(
        data: state.data.copyWith(selectedUseCase: event.useCase),
      ),
    );
  }

  FutureOr<void> _onGenerateContent(
    _GenerateContent event,
    Emitter<TextGenerateState> emit,
  ) async {
    emit(TextGenerateState.loading(data: state.data));

    try {
      final selectedUseCase = state.data.selectedUseCase;
      var prompt = 'Write me a ${selectedUseCase.name} ';
      for (var index = 0; index < selectedUseCase.subUseCases.length; index++) {
        if (event.dataFields.elementAtOrNull(index)?.isEmpty ?? true) {
          emit(
            TextGenerateState.failure(
              data: state.data,
              message: S.current.pleaseInputFillAllFields,
            ),
          );
          return;
        }

        final field = selectedUseCase.subUseCases[index];
        prompt += '${field.name}: ${event.dataFields[index]} ';
      }

      final text = await _openAIService.sendMessage(prompt);

      if (text == null) {
        throw (S.current.failedToGenerate);
      }

      emit(
        TextGenerateState.success(
            data: state.data.copyWith(
          content: text,
          isCompleteAnimatedText: false,
        )),
      );
    } catch (e) {
      emit(
        TextGenerateState.failure(
          data: state.data,
          message: e.toString(),
        ),
      );
    }
  }

  FutureOr<void> _onChangeToEditMode(
    _ChangeToEditMode event,
    Emitter<TextGenerateState> emit,
  ) {
    emit(
      TextGenerateState.editMode(data: state.data.copyWith()),
    );
  }

  FutureOr<void> _onChangeToViewMode(
    _ChangeToViewMode event,
    Emitter<TextGenerateState> emit,
  ) {
    emit(
      TextGenerateState.viewMode(data: state.data.copyWith()),
    );
  }

  FutureOr<void> _onTextChanged(
    _TextChanged event,
    Emitter<TextGenerateState> emit,
  ) {
    emit(
      TextGenerateState.initial(
        data: state.data.copyWith(
          content: event.text,
        ),
      ),
    );
  }

  FutureOr<void> _onCompleteAnimatedText(
    _CompleteAnimatedText event,
    Emitter<TextGenerateState> emit,
  ) {
    emit(
      state.copyWith(
        data: state.data.copyWith(
          isCompleteAnimatedText: true,
        ),
      ),
    );
  }

  FutureOr<void> _onCopyContent(
    _CopyContent event,
    Emitter<TextGenerateState> emit,
  ) {
    Clipboard.setData(ClipboardData(text: event.content));

    emit(TextGenerateState.copiedContent(data: state.data));
  }
}
