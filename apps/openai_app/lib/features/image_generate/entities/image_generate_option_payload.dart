// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_generate_option_payload.freezed.dart';

part 'image_generate_option_payload.g.dart';

@freezed
class ImageGenerateOptionPayload with _$ImageGenerateOptionPayload {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ImageGenerateOptionPayload({
    @Default(2) int numberOfImages,
    String? style,
    String? medium,
    String? artist,
    String? mood,
    String? detail,
  }) = _ImageGenerateOptionPayload;

  factory ImageGenerateOptionPayload.fromJson(Map<String, dynamic> json) =>
      _$ImageGenerateOptionPayloadFromJson(json);
}
