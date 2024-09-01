// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_generate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageGenerateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) textChanged,
    required TResult Function(ImageSize imageSize) imageSizeChanged,
    required TResult Function(
            String prompt, ImageGenerateOptionPayload optionPayload)
        generateImage,
    required TResult Function(ViewType viewType) imageViewChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? textChanged,
    TResult? Function(ImageSize imageSize)? imageSizeChanged,
    TResult? Function(String prompt, ImageGenerateOptionPayload optionPayload)?
        generateImage,
    TResult? Function(ViewType viewType)? imageViewChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? textChanged,
    TResult Function(ImageSize imageSize)? imageSizeChanged,
    TResult Function(String prompt, ImageGenerateOptionPayload optionPayload)?
        generateImage,
    TResult Function(ViewType viewType)? imageViewChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_ImageSizeChanged value) imageSizeChanged,
    required TResult Function(_GenerateImage value) generateImage,
    required TResult Function(_ImageViewChanged value) imageViewChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TextChanged value)? textChanged,
    TResult? Function(_ImageSizeChanged value)? imageSizeChanged,
    TResult? Function(_GenerateImage value)? generateImage,
    TResult? Function(_ImageViewChanged value)? imageViewChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_ImageSizeChanged value)? imageSizeChanged,
    TResult Function(_GenerateImage value)? generateImage,
    TResult Function(_ImageViewChanged value)? imageViewChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageGenerateEventCopyWith<$Res> {
  factory $ImageGenerateEventCopyWith(
          ImageGenerateEvent value, $Res Function(ImageGenerateEvent) then) =
      _$ImageGenerateEventCopyWithImpl<$Res, ImageGenerateEvent>;
}

/// @nodoc
class _$ImageGenerateEventCopyWithImpl<$Res, $Val extends ImageGenerateEvent>
    implements $ImageGenerateEventCopyWith<$Res> {
  _$ImageGenerateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ImageGenerateEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ImageGenerateEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) textChanged,
    required TResult Function(ImageSize imageSize) imageSizeChanged,
    required TResult Function(
            String prompt, ImageGenerateOptionPayload optionPayload)
        generateImage,
    required TResult Function(ViewType viewType) imageViewChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? textChanged,
    TResult? Function(ImageSize imageSize)? imageSizeChanged,
    TResult? Function(String prompt, ImageGenerateOptionPayload optionPayload)?
        generateImage,
    TResult? Function(ViewType viewType)? imageViewChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? textChanged,
    TResult Function(ImageSize imageSize)? imageSizeChanged,
    TResult Function(String prompt, ImageGenerateOptionPayload optionPayload)?
        generateImage,
    TResult Function(ViewType viewType)? imageViewChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_ImageSizeChanged value) imageSizeChanged,
    required TResult Function(_GenerateImage value) generateImage,
    required TResult Function(_ImageViewChanged value) imageViewChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TextChanged value)? textChanged,
    TResult? Function(_ImageSizeChanged value)? imageSizeChanged,
    TResult? Function(_GenerateImage value)? generateImage,
    TResult? Function(_ImageViewChanged value)? imageViewChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_ImageSizeChanged value)? imageSizeChanged,
    TResult Function(_GenerateImage value)? generateImage,
    TResult Function(_ImageViewChanged value)? imageViewChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ImageGenerateEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_TextChangedCopyWith<$Res> {
  factory _$$_TextChangedCopyWith(
          _$_TextChanged value, $Res Function(_$_TextChanged) then) =
      __$$_TextChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_TextChangedCopyWithImpl<$Res>
    extends _$ImageGenerateEventCopyWithImpl<$Res, _$_TextChanged>
    implements _$$_TextChangedCopyWith<$Res> {
  __$$_TextChangedCopyWithImpl(
      _$_TextChanged _value, $Res Function(_$_TextChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_TextChanged(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TextChanged implements _TextChanged {
  const _$_TextChanged({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'ImageGenerateEvent.textChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextChanged &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextChangedCopyWith<_$_TextChanged> get copyWith =>
      __$$_TextChangedCopyWithImpl<_$_TextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) textChanged,
    required TResult Function(ImageSize imageSize) imageSizeChanged,
    required TResult Function(
            String prompt, ImageGenerateOptionPayload optionPayload)
        generateImage,
    required TResult Function(ViewType viewType) imageViewChanged,
  }) {
    return textChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? textChanged,
    TResult? Function(ImageSize imageSize)? imageSizeChanged,
    TResult? Function(String prompt, ImageGenerateOptionPayload optionPayload)?
        generateImage,
    TResult? Function(ViewType viewType)? imageViewChanged,
  }) {
    return textChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? textChanged,
    TResult Function(ImageSize imageSize)? imageSizeChanged,
    TResult Function(String prompt, ImageGenerateOptionPayload optionPayload)?
        generateImage,
    TResult Function(ViewType viewType)? imageViewChanged,
    required TResult orElse(),
  }) {
    if (textChanged != null) {
      return textChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_ImageSizeChanged value) imageSizeChanged,
    required TResult Function(_GenerateImage value) generateImage,
    required TResult Function(_ImageViewChanged value) imageViewChanged,
  }) {
    return textChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TextChanged value)? textChanged,
    TResult? Function(_ImageSizeChanged value)? imageSizeChanged,
    TResult? Function(_GenerateImage value)? generateImage,
    TResult? Function(_ImageViewChanged value)? imageViewChanged,
  }) {
    return textChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_ImageSizeChanged value)? imageSizeChanged,
    TResult Function(_GenerateImage value)? generateImage,
    TResult Function(_ImageViewChanged value)? imageViewChanged,
    required TResult orElse(),
  }) {
    if (textChanged != null) {
      return textChanged(this);
    }
    return orElse();
  }
}

abstract class _TextChanged implements ImageGenerateEvent {
  const factory _TextChanged({required final String text}) = _$_TextChanged;

  String get text;
  @JsonKey(ignore: true)
  _$$_TextChangedCopyWith<_$_TextChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImageSizeChangedCopyWith<$Res> {
  factory _$$_ImageSizeChangedCopyWith(
          _$_ImageSizeChanged value, $Res Function(_$_ImageSizeChanged) then) =
      __$$_ImageSizeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageSize imageSize});
}

/// @nodoc
class __$$_ImageSizeChangedCopyWithImpl<$Res>
    extends _$ImageGenerateEventCopyWithImpl<$Res, _$_ImageSizeChanged>
    implements _$$_ImageSizeChangedCopyWith<$Res> {
  __$$_ImageSizeChangedCopyWithImpl(
      _$_ImageSizeChanged _value, $Res Function(_$_ImageSizeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageSize = null,
  }) {
    return _then(_$_ImageSizeChanged(
      imageSize: null == imageSize
          ? _value.imageSize
          : imageSize // ignore: cast_nullable_to_non_nullable
              as ImageSize,
    ));
  }
}

/// @nodoc

class _$_ImageSizeChanged implements _ImageSizeChanged {
  const _$_ImageSizeChanged({required this.imageSize});

  @override
  final ImageSize imageSize;

  @override
  String toString() {
    return 'ImageGenerateEvent.imageSizeChanged(imageSize: $imageSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageSizeChanged &&
            (identical(other.imageSize, imageSize) ||
                other.imageSize == imageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageSizeChangedCopyWith<_$_ImageSizeChanged> get copyWith =>
      __$$_ImageSizeChangedCopyWithImpl<_$_ImageSizeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) textChanged,
    required TResult Function(ImageSize imageSize) imageSizeChanged,
    required TResult Function(
            String prompt, ImageGenerateOptionPayload optionPayload)
        generateImage,
    required TResult Function(ViewType viewType) imageViewChanged,
  }) {
    return imageSizeChanged(imageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? textChanged,
    TResult? Function(ImageSize imageSize)? imageSizeChanged,
    TResult? Function(String prompt, ImageGenerateOptionPayload optionPayload)?
        generateImage,
    TResult? Function(ViewType viewType)? imageViewChanged,
  }) {
    return imageSizeChanged?.call(imageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? textChanged,
    TResult Function(ImageSize imageSize)? imageSizeChanged,
    TResult Function(String prompt, ImageGenerateOptionPayload optionPayload)?
        generateImage,
    TResult Function(ViewType viewType)? imageViewChanged,
    required TResult orElse(),
  }) {
    if (imageSizeChanged != null) {
      return imageSizeChanged(imageSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_ImageSizeChanged value) imageSizeChanged,
    required TResult Function(_GenerateImage value) generateImage,
    required TResult Function(_ImageViewChanged value) imageViewChanged,
  }) {
    return imageSizeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TextChanged value)? textChanged,
    TResult? Function(_ImageSizeChanged value)? imageSizeChanged,
    TResult? Function(_GenerateImage value)? generateImage,
    TResult? Function(_ImageViewChanged value)? imageViewChanged,
  }) {
    return imageSizeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_ImageSizeChanged value)? imageSizeChanged,
    TResult Function(_GenerateImage value)? generateImage,
    TResult Function(_ImageViewChanged value)? imageViewChanged,
    required TResult orElse(),
  }) {
    if (imageSizeChanged != null) {
      return imageSizeChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageSizeChanged implements ImageGenerateEvent {
  const factory _ImageSizeChanged({required final ImageSize imageSize}) =
      _$_ImageSizeChanged;

  ImageSize get imageSize;
  @JsonKey(ignore: true)
  _$$_ImageSizeChangedCopyWith<_$_ImageSizeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GenerateImageCopyWith<$Res> {
  factory _$$_GenerateImageCopyWith(
          _$_GenerateImage value, $Res Function(_$_GenerateImage) then) =
      __$$_GenerateImageCopyWithImpl<$Res>;
  @useResult
  $Res call({String prompt, ImageGenerateOptionPayload optionPayload});

  $ImageGenerateOptionPayloadCopyWith<$Res> get optionPayload;
}

/// @nodoc
class __$$_GenerateImageCopyWithImpl<$Res>
    extends _$ImageGenerateEventCopyWithImpl<$Res, _$_GenerateImage>
    implements _$$_GenerateImageCopyWith<$Res> {
  __$$_GenerateImageCopyWithImpl(
      _$_GenerateImage _value, $Res Function(_$_GenerateImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? optionPayload = null,
  }) {
    return _then(_$_GenerateImage(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      optionPayload: null == optionPayload
          ? _value.optionPayload
          : optionPayload // ignore: cast_nullable_to_non_nullable
              as ImageGenerateOptionPayload,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageGenerateOptionPayloadCopyWith<$Res> get optionPayload {
    return $ImageGenerateOptionPayloadCopyWith<$Res>(_value.optionPayload,
        (value) {
      return _then(_value.copyWith(optionPayload: value));
    });
  }
}

/// @nodoc

class _$_GenerateImage implements _GenerateImage {
  const _$_GenerateImage({required this.prompt, required this.optionPayload});

  @override
  final String prompt;
  @override
  final ImageGenerateOptionPayload optionPayload;

  @override
  String toString() {
    return 'ImageGenerateEvent.generateImage(prompt: $prompt, optionPayload: $optionPayload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerateImage &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.optionPayload, optionPayload) ||
                other.optionPayload == optionPayload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prompt, optionPayload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerateImageCopyWith<_$_GenerateImage> get copyWith =>
      __$$_GenerateImageCopyWithImpl<_$_GenerateImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) textChanged,
    required TResult Function(ImageSize imageSize) imageSizeChanged,
    required TResult Function(
            String prompt, ImageGenerateOptionPayload optionPayload)
        generateImage,
    required TResult Function(ViewType viewType) imageViewChanged,
  }) {
    return generateImage(prompt, optionPayload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? textChanged,
    TResult? Function(ImageSize imageSize)? imageSizeChanged,
    TResult? Function(String prompt, ImageGenerateOptionPayload optionPayload)?
        generateImage,
    TResult? Function(ViewType viewType)? imageViewChanged,
  }) {
    return generateImage?.call(prompt, optionPayload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? textChanged,
    TResult Function(ImageSize imageSize)? imageSizeChanged,
    TResult Function(String prompt, ImageGenerateOptionPayload optionPayload)?
        generateImage,
    TResult Function(ViewType viewType)? imageViewChanged,
    required TResult orElse(),
  }) {
    if (generateImage != null) {
      return generateImage(prompt, optionPayload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_ImageSizeChanged value) imageSizeChanged,
    required TResult Function(_GenerateImage value) generateImage,
    required TResult Function(_ImageViewChanged value) imageViewChanged,
  }) {
    return generateImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TextChanged value)? textChanged,
    TResult? Function(_ImageSizeChanged value)? imageSizeChanged,
    TResult? Function(_GenerateImage value)? generateImage,
    TResult? Function(_ImageViewChanged value)? imageViewChanged,
  }) {
    return generateImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_ImageSizeChanged value)? imageSizeChanged,
    TResult Function(_GenerateImage value)? generateImage,
    TResult Function(_ImageViewChanged value)? imageViewChanged,
    required TResult orElse(),
  }) {
    if (generateImage != null) {
      return generateImage(this);
    }
    return orElse();
  }
}

abstract class _GenerateImage implements ImageGenerateEvent {
  const factory _GenerateImage(
          {required final String prompt,
          required final ImageGenerateOptionPayload optionPayload}) =
      _$_GenerateImage;

  String get prompt;
  ImageGenerateOptionPayload get optionPayload;
  @JsonKey(ignore: true)
  _$$_GenerateImageCopyWith<_$_GenerateImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImageViewChangedCopyWith<$Res> {
  factory _$$_ImageViewChangedCopyWith(
          _$_ImageViewChanged value, $Res Function(_$_ImageViewChanged) then) =
      __$$_ImageViewChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({ViewType viewType});
}

/// @nodoc
class __$$_ImageViewChangedCopyWithImpl<$Res>
    extends _$ImageGenerateEventCopyWithImpl<$Res, _$_ImageViewChanged>
    implements _$$_ImageViewChangedCopyWith<$Res> {
  __$$_ImageViewChangedCopyWithImpl(
      _$_ImageViewChanged _value, $Res Function(_$_ImageViewChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewType = null,
  }) {
    return _then(_$_ImageViewChanged(
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as ViewType,
    ));
  }
}

/// @nodoc

class _$_ImageViewChanged implements _ImageViewChanged {
  const _$_ImageViewChanged({required this.viewType});

  @override
  final ViewType viewType;

  @override
  String toString() {
    return 'ImageGenerateEvent.imageViewChanged(viewType: $viewType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageViewChanged &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageViewChangedCopyWith<_$_ImageViewChanged> get copyWith =>
      __$$_ImageViewChangedCopyWithImpl<_$_ImageViewChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) textChanged,
    required TResult Function(ImageSize imageSize) imageSizeChanged,
    required TResult Function(
            String prompt, ImageGenerateOptionPayload optionPayload)
        generateImage,
    required TResult Function(ViewType viewType) imageViewChanged,
  }) {
    return imageViewChanged(viewType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? textChanged,
    TResult? Function(ImageSize imageSize)? imageSizeChanged,
    TResult? Function(String prompt, ImageGenerateOptionPayload optionPayload)?
        generateImage,
    TResult? Function(ViewType viewType)? imageViewChanged,
  }) {
    return imageViewChanged?.call(viewType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? textChanged,
    TResult Function(ImageSize imageSize)? imageSizeChanged,
    TResult Function(String prompt, ImageGenerateOptionPayload optionPayload)?
        generateImage,
    TResult Function(ViewType viewType)? imageViewChanged,
    required TResult orElse(),
  }) {
    if (imageViewChanged != null) {
      return imageViewChanged(viewType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_ImageSizeChanged value) imageSizeChanged,
    required TResult Function(_GenerateImage value) generateImage,
    required TResult Function(_ImageViewChanged value) imageViewChanged,
  }) {
    return imageViewChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TextChanged value)? textChanged,
    TResult? Function(_ImageSizeChanged value)? imageSizeChanged,
    TResult? Function(_GenerateImage value)? generateImage,
    TResult? Function(_ImageViewChanged value)? imageViewChanged,
  }) {
    return imageViewChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_ImageSizeChanged value)? imageSizeChanged,
    TResult Function(_GenerateImage value)? generateImage,
    TResult Function(_ImageViewChanged value)? imageViewChanged,
    required TResult orElse(),
  }) {
    if (imageViewChanged != null) {
      return imageViewChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageViewChanged implements ImageGenerateEvent {
  const factory _ImageViewChanged({required final ViewType viewType}) =
      _$_ImageViewChanged;

  ViewType get viewType;
  @JsonKey(ignore: true)
  _$$_ImageViewChangedCopyWith<_$_ImageViewChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImageGenerateState {
  ImageGenerateDataState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageGenerateDataState data) initial,
    required TResult Function(ImageGenerateDataState data) loading,
    required TResult Function(ImageGenerateDataState data, List<String> images)
        success,
    required TResult Function(ImageGenerateDataState data, String errorMessage)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageGenerateDataState data)? initial,
    TResult? Function(ImageGenerateDataState data)? loading,
    TResult? Function(ImageGenerateDataState data, List<String> images)?
        success,
    TResult? Function(ImageGenerateDataState data, String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageGenerateDataState data)? initial,
    TResult Function(ImageGenerateDataState data)? loading,
    TResult Function(ImageGenerateDataState data, List<String> images)? success,
    TResult Function(ImageGenerateDataState data, String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageGenerateStateCopyWith<ImageGenerateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageGenerateStateCopyWith<$Res> {
  factory $ImageGenerateStateCopyWith(
          ImageGenerateState value, $Res Function(ImageGenerateState) then) =
      _$ImageGenerateStateCopyWithImpl<$Res, ImageGenerateState>;
  @useResult
  $Res call({ImageGenerateDataState data});

  $ImageGenerateDataStateCopyWith<$Res> get data;
}

/// @nodoc
class _$ImageGenerateStateCopyWithImpl<$Res, $Val extends ImageGenerateState>
    implements $ImageGenerateStateCopyWith<$Res> {
  _$ImageGenerateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ImageGenerateDataState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageGenerateDataStateCopyWith<$Res> get data {
    return $ImageGenerateDataStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ImageGenerateStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImageGenerateDataState data});

  @override
  $ImageGenerateDataStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ImageGenerateStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Initial(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ImageGenerateDataState,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.data = const ImageGenerateDataState()});

  @override
  @JsonKey()
  final ImageGenerateDataState data;

  @override
  String toString() {
    return 'ImageGenerateState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageGenerateDataState data) initial,
    required TResult Function(ImageGenerateDataState data) loading,
    required TResult Function(ImageGenerateDataState data, List<String> images)
        success,
    required TResult Function(ImageGenerateDataState data, String errorMessage)
        error,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageGenerateDataState data)? initial,
    TResult? Function(ImageGenerateDataState data)? loading,
    TResult? Function(ImageGenerateDataState data, List<String> images)?
        success,
    TResult? Function(ImageGenerateDataState data, String errorMessage)? error,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageGenerateDataState data)? initial,
    TResult Function(ImageGenerateDataState data)? loading,
    TResult Function(ImageGenerateDataState data, List<String> images)? success,
    TResult Function(ImageGenerateDataState data, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ImageGenerateState {
  const factory _Initial({final ImageGenerateDataState data}) = _$_Initial;

  @override
  ImageGenerateDataState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $ImageGenerateStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImageGenerateDataState data});

  @override
  $ImageGenerateDataStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ImageGenerateStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Loading(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ImageGenerateDataState,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required this.data});

  @override
  final ImageGenerateDataState data;

  @override
  String toString() {
    return 'ImageGenerateState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageGenerateDataState data) initial,
    required TResult Function(ImageGenerateDataState data) loading,
    required TResult Function(ImageGenerateDataState data, List<String> images)
        success,
    required TResult Function(ImageGenerateDataState data, String errorMessage)
        error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageGenerateDataState data)? initial,
    TResult? Function(ImageGenerateDataState data)? loading,
    TResult? Function(ImageGenerateDataState data, List<String> images)?
        success,
    TResult? Function(ImageGenerateDataState data, String errorMessage)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageGenerateDataState data)? initial,
    TResult Function(ImageGenerateDataState data)? loading,
    TResult Function(ImageGenerateDataState data, List<String> images)? success,
    TResult Function(ImageGenerateDataState data, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ImageGenerateState {
  const factory _Loading({required final ImageGenerateDataState data}) =
      _$_Loading;

  @override
  ImageGenerateDataState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res>
    implements $ImageGenerateStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImageGenerateDataState data, List<String> images});

  @override
  $ImageGenerateDataStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$ImageGenerateStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? images = null,
  }) {
    return _then(_$_Success(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ImageGenerateDataState,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.data, required final List<String> images})
      : _images = images;

  @override
  final ImageGenerateDataState data;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ImageGenerateState.success(data: $data, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, data, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageGenerateDataState data) initial,
    required TResult Function(ImageGenerateDataState data) loading,
    required TResult Function(ImageGenerateDataState data, List<String> images)
        success,
    required TResult Function(ImageGenerateDataState data, String errorMessage)
        error,
  }) {
    return success(data, images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageGenerateDataState data)? initial,
    TResult? Function(ImageGenerateDataState data)? loading,
    TResult? Function(ImageGenerateDataState data, List<String> images)?
        success,
    TResult? Function(ImageGenerateDataState data, String errorMessage)? error,
  }) {
    return success?.call(data, images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageGenerateDataState data)? initial,
    TResult Function(ImageGenerateDataState data)? loading,
    TResult Function(ImageGenerateDataState data, List<String> images)? success,
    TResult Function(ImageGenerateDataState data, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ImageGenerateState {
  const factory _Success(
      {required final ImageGenerateDataState data,
      required final List<String> images}) = _$_Success;

  @override
  ImageGenerateDataState get data;
  List<String> get images;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res>
    implements $ImageGenerateStateCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImageGenerateDataState data, String errorMessage});

  @override
  $ImageGenerateDataStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$ImageGenerateStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_Error(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ImageGenerateDataState,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.data, required this.errorMessage});

  @override
  final ImageGenerateDataState data;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ImageGenerateState.error(data: $data, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageGenerateDataState data) initial,
    required TResult Function(ImageGenerateDataState data) loading,
    required TResult Function(ImageGenerateDataState data, List<String> images)
        success,
    required TResult Function(ImageGenerateDataState data, String errorMessage)
        error,
  }) {
    return error(data, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageGenerateDataState data)? initial,
    TResult? Function(ImageGenerateDataState data)? loading,
    TResult? Function(ImageGenerateDataState data, List<String> images)?
        success,
    TResult? Function(ImageGenerateDataState data, String errorMessage)? error,
  }) {
    return error?.call(data, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageGenerateDataState data)? initial,
    TResult Function(ImageGenerateDataState data)? loading,
    TResult Function(ImageGenerateDataState data, List<String> images)? success,
    TResult Function(ImageGenerateDataState data, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ImageGenerateState {
  const factory _Error(
      {required final ImageGenerateDataState data,
      required final String errorMessage}) = _$_Error;

  @override
  ImageGenerateDataState get data;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
