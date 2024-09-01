import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'sub_use_case.dart';

part 'text_use_case.freezed.dart';
part 'text_use_case.g.dart';

@freezed
class TextUseCase with _$TextUseCase {
  const factory TextUseCase({
    required String name,
    required List<SubUseCase> subUseCases,
  }) = _TextUseCase;

  factory TextUseCase.fromJson(Map<String, dynamic> json) =>
      _$TextUseCaseFromJson(json);
}
