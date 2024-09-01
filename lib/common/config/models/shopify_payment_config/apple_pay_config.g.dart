// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apple_pay_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApplePayConfig _$$_ApplePayConfigFromJson(Map<String, dynamic> json) =>
    _$_ApplePayConfig(
      enable: json['enable'] as bool? ?? false,
      merchantId: json['merchantId'] as String? ?? '',
    );

Map<String, dynamic> _$$_ApplePayConfigToJson(_$_ApplePayConfig instance) =>
    <String, dynamic>{
      'enable': instance.enable,
      'merchantId': instance.merchantId,
    };
