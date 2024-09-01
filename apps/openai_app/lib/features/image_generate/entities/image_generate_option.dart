import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_generate_option.freezed.dart';
part 'image_generate_option.g.dart';

@freezed
class ImageGenerateOption with _$ImageGenerateOption {
  const factory ImageGenerateOption({
    @Default(<String>[]) List<String> styles,
    @Default(<String>[]) List<String> mediums,
    @Default(<String>[]) List<String> artists,
    @Default(<String>[]) List<String> moods,
    @Default(<String>[]) List<String> details,
  }) = _ImageOption;

  factory ImageGenerateOption.fromJson(Map<String, dynamic> json) =>
      _$ImageGenerateOptionFromJson(json);
}
