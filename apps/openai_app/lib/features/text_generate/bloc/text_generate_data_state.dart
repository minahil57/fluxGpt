import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/text_use_case.dart';

part 'text_generate_data_state.freezed.dart';

@freezed
class TextGenerateDataState with _$TextGenerateDataState {
  const factory TextGenerateDataState({
    required TextUseCase selectedUseCase,
    required List<TextUseCase> useCases,
    @Default('') String content,
    @Default(false) bool isCompleteAnimatedText,
  }) = _TextGenerateDataState;

  const TextGenerateDataState._();

  bool get allowCopy => content.isNotEmpty;
}
