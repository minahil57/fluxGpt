import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../generated/l10n.dart';
import '../../../services/open_ai_service.dart';
import '../entities/image_generate_option_payload.dart';
import 'image_generate_data_state.dart';

part 'image_generate_event.dart';

part 'image_generate_state.dart';

part 'image_generate_bloc.freezed.dart';

class ImageGenerateBloc extends Bloc<ImageGenerateEvent, ImageGenerateState> {
  final OpenAIService _openAIService;

  ImageGenerateBloc({
    required OpenAIService openAIService,
  })  : _openAIService = openAIService,
        super(const ImageGenerateState.initial()) {
    on<_Started>(_onStarted);
    on<_TextChanged>(_onTextChanged);
    on<_ImageSizeChanged>(_onImageSizeChanged);
    on<_ImageViewChanged>(_onImageViewChanged);
    on<_GenerateImage>(_onGenerateImage);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<ImageGenerateState> emit,
  ) {
    emit(const ImageGenerateState.initial());
  }

  FutureOr<void> _onTextChanged(
    _TextChanged event,
    Emitter<ImageGenerateState> emit,
  ) {
    emit(
      state.copyWith(
          data: state.data.copyWith(allowSubmit: event.text.trim().isNotEmpty)),
    );
  }

  FutureOr<void> _onImageSizeChanged(
    _ImageSizeChanged event,
    Emitter<ImageGenerateState> emit,
  ) {
    emit(
      state.copyWith(
        data: state.data.copyWith(imageSize: event.imageSize),
      ),
    );
  }

  FutureOr<void> _onGenerateImage(
    _GenerateImage event,
    Emitter<ImageGenerateState> emit,
  ) async {
    emit(ImageGenerateState.loading(
      data: state.data.copyWith(allowSubmit: false),
    ));
    // Call API here
    try {
      final result = await _openAIService.generateImage(
        prompt: event.prompt,
        imageSize: state.data.imageSize.value,
        optionPayload: event.optionPayload,
      );

      if (result == null) {
        emit(ImageGenerateState.error(
          data: state.data.copyWith(allowSubmit: true),
          errorMessage: S.current.somethingWhenWrong,
        ));
        return;
      }

      emit(ImageGenerateState.success(
        data: state.data.copyWith(allowSubmit: true),
        images: result,
      ));
    } catch (e) {
      emit(ImageGenerateState.error(
          data: state.data.copyWith(allowSubmit: true),
          errorMessage: e.toString()));
      return;
    }
  }

  FutureOr<void> _onImageViewChanged(
    _ImageViewChanged event,
    Emitter<ImageGenerateState> emit,
  ) {
    emit(
      state.copyWith(
        data: state.data.copyWith(viewType: event.viewType),
      ),
    );
  }
}
