import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

import '../../data/boxes.dart';
import 'flash.dart';

class BiometricsTools {
  final LocalAuthentication auth = LocalAuthentication();
  bool _isSupported = false;
  bool get isSupported => _isSupported;

  bool get isLoginSupported =>
      _isSupported &&
      BiometricsBox().biometricsEnableLogin &&
      (BiometricsBox().username?.isNotEmpty ?? false) &&
      (BiometricsBox().password?.isNotEmpty ?? false);
  bool get isCheckoutSupported =>
      _isSupported && BiometricsBox().biometricsEnableCheckout;
  bool get isWalletSupported =>
      _isSupported && BiometricsBox().biometricsEnableWallet;

  BiometricsTools._();
  static final instance = BiometricsTools._();

  Future init() async {
    _isSupported = await auth.isDeviceSupported();
  }

  Future<bool> localAuth(BuildContext context) async {
    try {
      final canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
      if (canAuthenticateWithBiometrics) {
        return auth.authenticate(
            localizedReason: 'Please authenticate to login',
            options: const AuthenticationOptions(
              biometricOnly: true,
              stickyAuth: true,
            ));
      } else {
        await FlashHelper.errorMessage(
          context,
          message: 'You need to enable setting',
        );
      }
      return false;
    } catch (e) {
      await FlashHelper.errorMessage(
        context,
        message: e.toString(),
      );
      return false;
    }
  }

  void saveUsernameAndPassword(String username, String password) {
    BiometricsBox().username = username;
    BiometricsBox().password = password;
  }

  void deleteUsernameAndPassword() {
    BiometricsBox().username = null;
    BiometricsBox().password = null;
  }
}
