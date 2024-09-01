import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'apple_pay_config.dart';
import 'google_pay_config.dart';
import 'payment_card_config.dart';

part 'shopify_payment_config.freezed.dart';

part 'shopify_payment_config.g.dart';

@freezed
class ShopifyPaymentConfig with _$ShopifyPaymentConfig {
  const factory ShopifyPaymentConfig({
    @Default('') String shopName,
    @Default('US') String countryCode,
    @Default(false) bool productionMode,
    @Default(PaymentCardConfig()) PaymentCardConfig paymentCardConfig,
    @Default(GooglePayConfig()) GooglePayConfig googlePayConfig,
    @Default(ApplePayConfig()) ApplePayConfig applePayConfig,
  }) = _ShopifyPaymentConfig;

  factory ShopifyPaymentConfig.fromJson(Map<String, dynamic> json) =>
      _$ShopifyPaymentConfigFromJson(json);

  const ShopifyPaymentConfig._();

  bool get isTestMode => !productionMode;
}
