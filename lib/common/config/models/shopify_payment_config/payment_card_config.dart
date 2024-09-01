import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_card_config.freezed.dart';

part 'payment_card_config.g.dart';

@freezed
class PaymentCardConfig with _$PaymentCardConfig {
  const factory PaymentCardConfig({
    @Default(false) bool enable,
    @Default('') String serverEndpoint,
  }) = _PaymentCardConfig;

  factory PaymentCardConfig.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardConfigFromJson(json);
}
