import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_pay_config.freezed.dart';

part 'google_pay_config.g.dart';

@freezed
class GooglePayConfig with _$GooglePayConfig {
  const factory GooglePayConfig({
    @Default(false) bool enable,
    @Default('') String stripePublishableKey,
    @Default('') String merchantId,
  }) = _GooglePayConfig;

  factory GooglePayConfig.fromJson(Map<String, dynamic> json) =>
      _$GooglePayConfigFromJson(json);
}
