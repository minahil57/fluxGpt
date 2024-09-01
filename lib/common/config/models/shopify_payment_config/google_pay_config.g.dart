// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_pay_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GooglePayConfig _$$_GooglePayConfigFromJson(Map<String, dynamic> json) =>
    _$_GooglePayConfig(
      enable: json['enable'] as bool? ?? false,
      stripePublishableKey: json['stripePublishableKey'] as String? ?? '',
      merchantId: json['merchantId'] as String? ?? '',
    );

Map<String, dynamic> _$$_GooglePayConfigToJson(_$_GooglePayConfig instance) =>
    <String, dynamic>{
      'enable': instance.enable,
      'stripePublishableKey': instance.stripePublishableKey,
      'merchantId': instance.merchantId,
    };
