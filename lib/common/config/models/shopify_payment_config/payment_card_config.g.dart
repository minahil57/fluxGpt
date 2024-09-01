// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentCardConfig _$$_PaymentCardConfigFromJson(Map<String, dynamic> json) =>
    _$_PaymentCardConfig(
      enable: json['enable'] as bool? ?? false,
      serverEndpoint: json['serverEndpoint'] as String? ?? '',
    );

Map<String, dynamic> _$$_PaymentCardConfigToJson(
        _$_PaymentCardConfig instance) =>
    <String, dynamic>{
      'enable': instance.enable,
      'serverEndpoint': instance.serverEndpoint,
    };
