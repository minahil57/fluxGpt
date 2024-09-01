import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'apple_pay_config.freezed.dart';

part 'apple_pay_config.g.dart';

@freezed
class ApplePayConfig with _$ApplePayConfig {
  const factory ApplePayConfig({
    @Default(false) bool enable,
    @Default('') String merchantId,
  }) = _ApplePayConfig;

  factory ApplePayConfig.fromJson(Map<String, dynamic> json) =>
      _$ApplePayConfigFromJson(json);
}
