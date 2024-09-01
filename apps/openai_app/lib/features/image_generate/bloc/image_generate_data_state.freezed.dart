// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_generate_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageGenerateDataState {
  bool get allowSubmit => throw _privateConstructorUsedError;
  ViewType get viewType => throw _privateConstructorUsedError;
  ImageSize get imageSize => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageGenerateDataStateCopyWith<ImageGenerateDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageGenerateDataStateCopyWith<$Res> {
  factory $ImageGenerateDataStateCopyWith(ImageGenerateDataState value,
          $Res Function(ImageGenerateDataState) then) =
      _$ImageGenerateDataStateCopyWithImpl<$Res, ImageGenerateDataState>;
  @useResult
  $Res call({bool allowSubmit, ViewType viewType, ImageSize imageSize});
}

/// @nodoc
class _$ImageGenerateDataStateCopyWithImpl<$Res,
        $Val extends ImageGenerateDataState>
    implements $ImageGenerateDataStateCopyWith<$Res> {
  _$ImageGenerateDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowSubmit = null,
    Object? viewType = null,
    Object? imageSize = null,
  }) {
    return _then(_value.copyWith(
      allowSubmit: null == allowSubmit
          ? _value.allowSubmit
          : allowSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as ViewType,
      imageSize: null == imageSize
          ? _value.imageSize
          : imageSize // ignore: cast_nullable_to_non_nullable
              as ImageSize,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageGenerateDataStateCopyWith<$Res>
    implements $ImageGenerateDataStateCopyWith<$Res> {
  factory _$$_ImageGenerateDataStateCopyWith(_$_ImageGenerateDataState value,
          $Res Function(_$_ImageGenerateDataState) then) =
      __$$_ImageGenerateDataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool allowSubmit, ViewType viewType, ImageSize imageSize});
}

/// @nodoc
class __$$_ImageGenerateDataStateCopyWithImpl<$Res>
    extends _$ImageGenerateDataStateCopyWithImpl<$Res,
        _$_ImageGenerateDataState>
    implements _$$_ImageGenerateDataStateCopyWith<$Res> {
  __$$_ImageGenerateDataStateCopyWithImpl(_$_ImageGenerateDataState _value,
      $Res Function(_$_ImageGenerateDataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowSubmit = null,
    Object? viewType = null,
    Object? imageSize = null,
  }) {
    return _then(_$_ImageGenerateDataState(
      allowSubmit: null == allowSubmit
          ? _value.allowSubmit
          : allowSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as ViewType,
      imageSize: null == imageSize
          ? _value.imageSize
          : imageSize // ignore: cast_nullable_to_non_nullable
              as ImageSize,
    ));
  }
}

/// @nodoc

class _$_ImageGenerateDataState
    with DiagnosticableTreeMixin
    implements _ImageGenerateDataState {
  const _$_ImageGenerateDataState(
      {this.allowSubmit = false,
      this.viewType = ViewType.page,
      this.imageSize = ImageSize.small});

  @override
  @JsonKey()
  final bool allowSubmit;
  @override
  @JsonKey()
  final ViewType viewType;
  @override
  @JsonKey()
  final ImageSize imageSize;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageGenerateDataState(allowSubmit: $allowSubmit, viewType: $viewType, imageSize: $imageSize)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageGenerateDataState'))
      ..add(DiagnosticsProperty('allowSubmit', allowSubmit))
      ..add(DiagnosticsProperty('viewType', viewType))
      ..add(DiagnosticsProperty('imageSize', imageSize));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageGenerateDataState &&
            (identical(other.allowSubmit, allowSubmit) ||
                other.allowSubmit == allowSubmit) &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType) &&
            (identical(other.imageSize, imageSize) ||
                other.imageSize == imageSize));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, allowSubmit, viewType, imageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageGenerateDataStateCopyWith<_$_ImageGenerateDataState> get copyWith =>
      __$$_ImageGenerateDataStateCopyWithImpl<_$_ImageGenerateDataState>(
          this, _$identity);
}

abstract class _ImageGenerateDataState implements ImageGenerateDataState {
  const factory _ImageGenerateDataState(
      {final bool allowSubmit,
      final ViewType viewType,
      final ImageSize imageSize}) = _$_ImageGenerateDataState;

  @override
  bool get allowSubmit;
  @override
  ViewType get viewType;
  @override
  ImageSize get imageSize;
  @override
  @JsonKey(ignore: true)
  _$$_ImageGenerateDataStateCopyWith<_$_ImageGenerateDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
