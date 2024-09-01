// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_pay_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GooglePayConfig _$GooglePayConfigFromJson(Map<String, dynamic> json) {
  return _GooglePayConfig.fromJson(json);
}

/// @nodoc
mixin _$GooglePayConfig {
  bool get enable => throw _privateConstructorUsedError;
  String get stripePublishableKey => throw _privateConstructorUsedError;
  String get merchantId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GooglePayConfigCopyWith<GooglePayConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GooglePayConfigCopyWith<$Res> {
  factory $GooglePayConfigCopyWith(
          GooglePayConfig value, $Res Function(GooglePayConfig) then) =
      _$GooglePayConfigCopyWithImpl<$Res, GooglePayConfig>;
  @useResult
  $Res call({bool enable, String stripePublishableKey, String merchantId});
}

/// @nodoc
class _$GooglePayConfigCopyWithImpl<$Res, $Val extends GooglePayConfig>
    implements $GooglePayConfigCopyWith<$Res> {
  _$GooglePayConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enable = null,
    Object? stripePublishableKey = null,
    Object? merchantId = null,
  }) {
    return _then(_value.copyWith(
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      stripePublishableKey: null == stripePublishableKey
          ? _value.stripePublishableKey
          : stripePublishableKey // ignore: cast_nullable_to_non_nullable
              as String,
      merchantId: null == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GooglePayConfigCopyWith<$Res>
    implements $GooglePayConfigCopyWith<$Res> {
  factory _$$_GooglePayConfigCopyWith(
          _$_GooglePayConfig value, $Res Function(_$_GooglePayConfig) then) =
      __$$_GooglePayConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool enable, String stripePublishableKey, String merchantId});
}

/// @nodoc
class __$$_GooglePayConfigCopyWithImpl<$Res>
    extends _$GooglePayConfigCopyWithImpl<$Res, _$_GooglePayConfig>
    implements _$$_GooglePayConfigCopyWith<$Res> {
  __$$_GooglePayConfigCopyWithImpl(
      _$_GooglePayConfig _value, $Res Function(_$_GooglePayConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enable = null,
    Object? stripePublishableKey = null,
    Object? merchantId = null,
  }) {
    return _then(_$_GooglePayConfig(
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      stripePublishableKey: null == stripePublishableKey
          ? _value.stripePublishableKey
          : stripePublishableKey // ignore: cast_nullable_to_non_nullable
              as String,
      merchantId: null == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GooglePayConfig
    with DiagnosticableTreeMixin
    implements _GooglePayConfig {
  const _$_GooglePayConfig(
      {this.enable = false,
      this.stripePublishableKey = '',
      this.merchantId = ''});

  factory _$_GooglePayConfig.fromJson(Map<String, dynamic> json) =>
      _$$_GooglePayConfigFromJson(json);

  @override
  @JsonKey()
  final bool enable;
  @override
  @JsonKey()
  final String stripePublishableKey;
  @override
  @JsonKey()
  final String merchantId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GooglePayConfig(enable: $enable, stripePublishableKey: $stripePublishableKey, merchantId: $merchantId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GooglePayConfig'))
      ..add(DiagnosticsProperty('enable', enable))
      ..add(DiagnosticsProperty('stripePublishableKey', stripePublishableKey))
      ..add(DiagnosticsProperty('merchantId', merchantId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GooglePayConfig &&
            (identical(other.enable, enable) || other.enable == enable) &&
            (identical(other.stripePublishableKey, stripePublishableKey) ||
                other.stripePublishableKey == stripePublishableKey) &&
            (identical(other.merchantId, merchantId) ||
                other.merchantId == merchantId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, enable, stripePublishableKey, merchantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GooglePayConfigCopyWith<_$_GooglePayConfig> get copyWith =>
      __$$_GooglePayConfigCopyWithImpl<_$_GooglePayConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GooglePayConfigToJson(
      this,
    );
  }
}

abstract class _GooglePayConfig implements GooglePayConfig {
  const factory _GooglePayConfig(
      {final bool enable,
      final String stripePublishableKey,
      final String merchantId}) = _$_GooglePayConfig;

  factory _GooglePayConfig.fromJson(Map<String, dynamic> json) =
      _$_GooglePayConfig.fromJson;

  @override
  bool get enable;
  @override
  String get stripePublishableKey;
  @override
  String get merchantId;
  @override
  @JsonKey(ignore: true)
  _$$_GooglePayConfigCopyWith<_$_GooglePayConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
