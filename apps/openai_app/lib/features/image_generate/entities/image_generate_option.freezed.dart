// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_generate_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageGenerateOption _$ImageGenerateOptionFromJson(Map<String, dynamic> json) {
  return _ImageOption.fromJson(json);
}

/// @nodoc
mixin _$ImageGenerateOption {
  List<String> get styles => throw _privateConstructorUsedError;
  List<String> get mediums => throw _privateConstructorUsedError;
  List<String> get artists => throw _privateConstructorUsedError;
  List<String> get moods => throw _privateConstructorUsedError;
  List<String> get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageGenerateOptionCopyWith<ImageGenerateOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageGenerateOptionCopyWith<$Res> {
  factory $ImageGenerateOptionCopyWith(
          ImageGenerateOption value, $Res Function(ImageGenerateOption) then) =
      _$ImageGenerateOptionCopyWithImpl<$Res, ImageGenerateOption>;
  @useResult
  $Res call(
      {List<String> styles,
      List<String> mediums,
      List<String> artists,
      List<String> moods,
      List<String> details});
}

/// @nodoc
class _$ImageGenerateOptionCopyWithImpl<$Res, $Val extends ImageGenerateOption>
    implements $ImageGenerateOptionCopyWith<$Res> {
  _$ImageGenerateOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? styles = null,
    Object? mediums = null,
    Object? artists = null,
    Object? moods = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      styles: null == styles
          ? _value.styles
          : styles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mediums: null == mediums
          ? _value.mediums
          : mediums // ignore: cast_nullable_to_non_nullable
              as List<String>,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<String>,
      moods: null == moods
          ? _value.moods
          : moods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageOptionCopyWith<$Res>
    implements $ImageGenerateOptionCopyWith<$Res> {
  factory _$$_ImageOptionCopyWith(
          _$_ImageOption value, $Res Function(_$_ImageOption) then) =
      __$$_ImageOptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> styles,
      List<String> mediums,
      List<String> artists,
      List<String> moods,
      List<String> details});
}

/// @nodoc
class __$$_ImageOptionCopyWithImpl<$Res>
    extends _$ImageGenerateOptionCopyWithImpl<$Res, _$_ImageOption>
    implements _$$_ImageOptionCopyWith<$Res> {
  __$$_ImageOptionCopyWithImpl(
      _$_ImageOption _value, $Res Function(_$_ImageOption) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? styles = null,
    Object? mediums = null,
    Object? artists = null,
    Object? moods = null,
    Object? details = null,
  }) {
    return _then(_$_ImageOption(
      styles: null == styles
          ? _value._styles
          : styles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mediums: null == mediums
          ? _value._mediums
          : mediums // ignore: cast_nullable_to_non_nullable
              as List<String>,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<String>,
      moods: null == moods
          ? _value._moods
          : moods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageOption with DiagnosticableTreeMixin implements _ImageOption {
  const _$_ImageOption(
      {final List<String> styles = const <String>[],
      final List<String> mediums = const <String>[],
      final List<String> artists = const <String>[],
      final List<String> moods = const <String>[],
      final List<String> details = const <String>[]})
      : _styles = styles,
        _mediums = mediums,
        _artists = artists,
        _moods = moods,
        _details = details;

  factory _$_ImageOption.fromJson(Map<String, dynamic> json) =>
      _$$_ImageOptionFromJson(json);

  final List<String> _styles;
  @override
  @JsonKey()
  List<String> get styles {
    if (_styles is EqualUnmodifiableListView) return _styles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_styles);
  }

  final List<String> _mediums;
  @override
  @JsonKey()
  List<String> get mediums {
    if (_mediums is EqualUnmodifiableListView) return _mediums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediums);
  }

  final List<String> _artists;
  @override
  @JsonKey()
  List<String> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  final List<String> _moods;
  @override
  @JsonKey()
  List<String> get moods {
    if (_moods is EqualUnmodifiableListView) return _moods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moods);
  }

  final List<String> _details;
  @override
  @JsonKey()
  List<String> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageGenerateOption(styles: $styles, mediums: $mediums, artists: $artists, moods: $moods, details: $details)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageGenerateOption'))
      ..add(DiagnosticsProperty('styles', styles))
      ..add(DiagnosticsProperty('mediums', mediums))
      ..add(DiagnosticsProperty('artists', artists))
      ..add(DiagnosticsProperty('moods', moods))
      ..add(DiagnosticsProperty('details', details));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageOption &&
            const DeepCollectionEquality().equals(other._styles, _styles) &&
            const DeepCollectionEquality().equals(other._mediums, _mediums) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality().equals(other._moods, _moods) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_styles),
      const DeepCollectionEquality().hash(_mediums),
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_moods),
      const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageOptionCopyWith<_$_ImageOption> get copyWith =>
      __$$_ImageOptionCopyWithImpl<_$_ImageOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageOptionToJson(
      this,
    );
  }
}

abstract class _ImageOption implements ImageGenerateOption {
  const factory _ImageOption(
      {final List<String> styles,
      final List<String> mediums,
      final List<String> artists,
      final List<String> moods,
      final List<String> details}) = _$_ImageOption;

  factory _ImageOption.fromJson(Map<String, dynamic> json) =
      _$_ImageOption.fromJson;

  @override
  List<String> get styles;
  @override
  List<String> get mediums;
  @override
  List<String> get artists;
  @override
  List<String> get moods;
  @override
  List<String> get details;
  @override
  @JsonKey(ignore: true)
  _$$_ImageOptionCopyWith<_$_ImageOption> get copyWith =>
      throw _privateConstructorUsedError;
}
