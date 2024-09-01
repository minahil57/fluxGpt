import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../generated/l10n.dart';

part 'image_generate_data_state.freezed.dart';

@freezed
class ImageGenerateDataState with _$ImageGenerateDataState {
  const factory ImageGenerateDataState({
    @Default(false) bool allowSubmit,
    @Default(ViewType.page) ViewType viewType,
    @Default(ImageSize.small) ImageSize imageSize,
  }) = _ImageGenerateDataState;
}

enum ImageSize {
  small,
  medium,
  large;

  String get value {
    switch (this) {
      case ImageSize.small:
        return '256x256';
      case ImageSize.medium:
        return '512x512';
      case ImageSize.large:
        return '1024x1024';
    }
  }
}

enum ViewType {
  page,
  grid;

  String get value {
    switch (this) {
      case ViewType.page:
        return S.current.page;
      case ViewType.grid:
        return S.current.grid;
    }
  }

  bool get isPage => this == ViewType.page;
}
