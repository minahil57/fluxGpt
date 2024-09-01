// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopify_payment_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopifyPaymentConfig _$$_ShopifyPaymentConfigFromJson(
        Map<String, dynamic> json) =>
    _$_ShopifyPaymentConfig(
      shopName: json['shopName'] as String? ?? '',
      countryCode: json['countryCode'] as String? ?? 'US',
      productionMode: json['productionMode'] as bool? ?? false,
      paymentCardConfig: json['paymentCardConfig'] == null
          ? const PaymentCardConfig()
          : PaymentCardConfig.fromJson(
              json['paymentCardConfig'] as Map<String, dynamic>),
      googlePayConfig: json['googlePayConfig'] == null
          ? const GooglePayConfig()
          : GooglePayConfig.fromJson(
              json['googlePayConfig'] as Map<String, dynamic>),
      applePayConfig: json['applePayConfig'] == null
          ? const ApplePayConfig()
          : ApplePayConfig.fromJson(
              json['applePayConfig'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShopifyPaymentConfigToJson(
        _$_ShopifyPaymentConfig instance) =>
    <String, dynamic>{
      'shopName': instance.shopName,
      'countryCode': instance.countryCode,
      'productionMode': instance.productionMode,
      'paymentCardConfig': instance.paymentCardConfig.toJson(),
      'googlePayConfig': instance.googlePayConfig.toJson(),
      'applePayConfig': instance.applePayConfig.toJson(),
    };
