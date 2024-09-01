import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_use_case.freezed.dart';
part 'sub_use_case.g.dart';

@freezed
class SubUseCase with _$SubUseCase {
  const factory SubUseCase({
    required String name,
    required String description,
  }) = _SubUseCase;

  factory SubUseCase.fromJson(Map<String, dynamic> json) =>
      _$SubUseCaseFromJson(json);
}
