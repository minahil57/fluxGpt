// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopify_payment_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopifyPaymentConfig _$ShopifyPaymentConfigFromJson(Map<String, dynamic> json) {
  return _ShopifyPaymentConfig.fromJson(json);
}

/// @nodoc
mixin _$ShopifyPaymentConfig {
  String get shopName => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  bool get productionMode => throw _privateConstructorUsedError;
  PaymentCardConfig get paymentCardConfig => throw _privateConstructorUsedError;
  GooglePayConfig get googlePayConfig => throw _privateConstructorUsedError;
  ApplePayConfig get applePayConfig => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopifyPaymentConfigCopyWith<ShopifyPaymentConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopifyPaymentConfigCopyWith<$Res> {
  factory $ShopifyPaymentConfigCopyWith(ShopifyPaymentConfig value,
          $Res Function(ShopifyPaymentConfig) then) =
      _$ShopifyPaymentConfigCopyWithImpl<$Res, ShopifyPaymentConfig>;
  @useResult
  $Res call(
      {String shopName,
      String countryCode,
      bool productionMode,
      PaymentCardConfig paymentCardConfig,
      GooglePayConfig googlePayConfig,
      ApplePayConfig applePayConfig});

  $PaymentCardConfigCopyWith<$Res> get paymentCardConfig;
  $GooglePayConfigCopyWith<$Res> get googlePayConfig;
  $ApplePayConfigCopyWith<$Res> get applePayConfig;
}

/// @nodoc
class _$ShopifyPaymentConfigCopyWithImpl<$Res,
        $Val extends ShopifyPaymentConfig>
    implements $ShopifyPaymentConfigCopyWith<$Res> {
  _$ShopifyPaymentConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopName = null,
    Object? countryCode = null,
    Object? productionMode = null,
    Object? paymentCardConfig = null,
    Object? googlePayConfig = null,
    Object? applePayConfig = null,
  }) {
    return _then(_value.copyWith(
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      productionMode: null == productionMode
          ? _value.productionMode
          : productionMode // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentCardConfig: null == paymentCardConfig
          ? _value.paymentCardConfig
          : paymentCardConfig // ignore: cast_nullable_to_non_nullable
              as PaymentCardConfig,
      googlePayConfig: null == googlePayConfig
          ? _value.googlePayConfig
          : googlePayConfig // ignore: cast_nullable_to_non_nullable
              as GooglePayConfig,
      applePayConfig: null == applePayConfig
          ? _value.applePayConfig
          : applePayConfig // ignore: cast_nullable_to_non_nullable
              as ApplePayConfig,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentCardConfigCopyWith<$Res> get paymentCardConfig {
    return $PaymentCardConfigCopyWith<$Res>(_value.paymentCardConfig, (value) {
      return _then(_value.copyWith(paymentCardConfig: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GooglePayConfigCopyWith<$Res> get googlePayConfig {
    return $GooglePayConfigCopyWith<$Res>(_value.googlePayConfig, (value) {
      return _then(_value.copyWith(googlePayConfig: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApplePayConfigCopyWith<$Res> get applePayConfig {
    return $ApplePayConfigCopyWith<$Res>(_value.applePayConfig, (value) {
      return _then(_value.copyWith(applePayConfig: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShopifyPaymentConfigCopyWith<$Res>
    implements $ShopifyPaymentConfigCopyWith<$Res> {
  factory _$$_ShopifyPaymentConfigCopyWith(_$_ShopifyPaymentConfig value,
          $Res Function(_$_ShopifyPaymentConfig) then) =
      __$$_ShopifyPaymentConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shopName,
      String countryCode,
      bool productionMode,
      PaymentCardConfig paymentCardConfig,
      GooglePayConfig googlePayConfig,
      ApplePayConfig applePayConfig});

  @override
  $PaymentCardConfigCopyWith<$Res> get paymentCardConfig;
  @override
  $GooglePayConfigCopyWith<$Res> get googlePayConfig;
  @override
  $ApplePayConfigCopyWith<$Res> get applePayConfig;
}

/// @nodoc
class __$$_ShopifyPaymentConfigCopyWithImpl<$Res>
    extends _$ShopifyPaymentConfigCopyWithImpl<$Res, _$_ShopifyPaymentConfig>
    implements _$$_ShopifyPaymentConfigCopyWith<$Res> {
  __$$_ShopifyPaymentConfigCopyWithImpl(_$_ShopifyPaymentConfig _value,
      $Res Function(_$_ShopifyPaymentConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopName = null,
    Object? countryCode = null,
    Object? productionMode = null,
    Object? paymentCardConfig = null,
    Object? googlePayConfig = null,
    Object? applePayConfig = null,
  }) {
    return _then(_$_ShopifyPaymentConfig(
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      productionMode: null == productionMode
          ? _value.productionMode
          : productionMode // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentCardConfig: null == paymentCardConfig
          ? _value.paymentCardConfig
          : paymentCardConfig // ignore: cast_nullable_to_non_nullable
              as PaymentCardConfig,
      googlePayConfig: null == googlePayConfig
          ? _value.googlePayConfig
          : googlePayConfig // ignore: cast_nullable_to_non_nullable
              as GooglePayConfig,
      applePayConfig: null == applePayConfig
          ? _value.applePayConfig
          : applePayConfig // ignore: cast_nullable_to_non_nullable
              as ApplePayConfig,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopifyPaymentConfig extends _ShopifyPaymentConfig
    with DiagnosticableTreeMixin {
  const _$_ShopifyPaymentConfig(
      {this.shopName = '',
      this.countryCode = 'US',
      this.productionMode = false,
      this.paymentCardConfig = const PaymentCardConfig(),
      this.googlePayConfig = const GooglePayConfig(),
      this.applePayConfig = const ApplePayConfig()})
      : super._();

  factory _$_ShopifyPaymentConfig.fromJson(Map<String, dynamic> json) =>
      _$$_ShopifyPaymentConfigFromJson(json);

  @override
  @JsonKey()
  final String shopName;
  @override
  @JsonKey()
  final String countryCode;
  @override
  @JsonKey()
  final bool productionMode;
  @override
  @JsonKey()
  final PaymentCardConfig paymentCardConfig;
  @override
  @JsonKey()
  final GooglePayConfig googlePayConfig;
  @override
  @JsonKey()
  final ApplePayConfig applePayConfig;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShopifyPaymentConfig(shopName: $shopName, countryCode: $countryCode, productionMode: $productionMode, paymentCardConfig: $paymentCardConfig, googlePayConfig: $googlePayConfig, applePayConfig: $applePayConfig)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShopifyPaymentConfig'))
      ..add(DiagnosticsProperty('shopName', shopName))
      ..add(DiagnosticsProperty('countryCode', countryCode))
      ..add(DiagnosticsProperty('productionMode', productionMode))
      ..add(DiagnosticsProperty('paymentCardConfig', paymentCardConfig))
      ..add(DiagnosticsProperty('googlePayConfig', googlePayConfig))
      ..add(DiagnosticsProperty('applePayConfig', applePayConfig));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopifyPaymentConfig &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.productionMode, productionMode) ||
                other.productionMode == productionMode) &&
            (identical(other.paymentCardConfig, paymentCardConfig) ||
                other.paymentCardConfig == paymentCardConfig) &&
            (identical(other.googlePayConfig, googlePayConfig) ||
                other.googlePayConfig == googlePayConfig) &&
            (identical(other.applePayConfig, applePayConfig) ||
                other.applePayConfig == applePayConfig));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shopName, countryCode,
      productionMode, paymentCardConfig, googlePayConfig, applePayConfig);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopifyPaymentConfigCopyWith<_$_ShopifyPaymentConfig> get copyWith =>
      __$$_ShopifyPaymentConfigCopyWithImpl<_$_ShopifyPaymentConfig>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopifyPaymentConfigToJson(
      this,
    );
  }
}

abstract class _ShopifyPaymentConfig extends ShopifyPaymentConfig {
  const factory _ShopifyPaymentConfig(
      {final String shopName,
      final String countryCode,
      final bool productionMode,
      final PaymentCardConfig paymentCardConfig,
      final GooglePayConfig googlePayConfig,
      final ApplePayConfig applePayConfig}) = _$_ShopifyPaymentConfig;
  const _ShopifyPaymentConfig._() : super._();

  factory _ShopifyPaymentConfig.fromJson(Map<String, dynamic> json) =
      _$_ShopifyPaymentConfig.fromJson;

  @override
  String get shopName;
  @override
  String get countryCode;
  @override
  bool get productionMode;
  @override
  PaymentCardConfig get paymentCardConfig;
  @override
  GooglePayConfig get googlePayConfig;
  @override
  ApplePayConfig get applePayConfig;
  @override
  @JsonKey(ignore: true)
  _$$_ShopifyPaymentConfigCopyWith<_$_ShopifyPaymentConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
