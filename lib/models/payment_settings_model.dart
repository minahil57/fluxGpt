import 'package:flutter/material.dart';

import '../services/index.dart';
import 'entities/payment_settings.dart';

class PaymentSettingsModel extends ChangeNotifier {
  final Services _service = Services();
  late PaymentSettings paymentSettings;
  bool isLoading = true;
  String? message;
  String? cardVaultUrl;

  Future<void> getPaymentSettings() async {
    try {
      paymentSettings = await _service.api.getPaymentSettings()!;

      isLoading = false;
      message = null;
      notifyListeners();
    } catch (err) {
      isLoading = false;
      message =
          'There is an issue with the app during request the data, please contact admin for fixing the issues $err';
      notifyListeners();
    }
  }
}
