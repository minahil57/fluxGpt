part of '../../boxes.dart';

extension BiometricsSettings on BiometricsBox {
  bool get biometricsEnableCheckout {
    return box.get(
      BoxKeys.biometricsEnableCheckout,
      defaultValue: false,
    );
  }

  set biometricsEnableCheckout(bool value) {
    box.put(BoxKeys.biometricsEnableCheckout, value);
  }

  bool get biometricsEnableWallet {
    return box.get(
      BoxKeys.biometricsEnableWallet,
      defaultValue: false,
    );
  }

  set biometricsEnableWallet(bool value) {
    box.put(BoxKeys.biometricsEnableWallet, value);
  }

  bool get biometricsEnableLogin {
    return box.get(
      BoxKeys.biometricsEnableLogin,
      defaultValue: false,
    );
  }

  set biometricsEnableLogin(bool value) {
    box.put(BoxKeys.biometricsEnableLogin, value);
  }

  String? get username {
    return box.get(
      BoxKeys.username,
      defaultValue: null,
    );
  }

  set username(String? value) {
    if (value == null) {
      box.delete(BoxKeys.username);
      return;
    }
    box.put(BoxKeys.username, value);
  }

  String? get password {
    return box.get(
      BoxKeys.password,
      defaultValue: null,
    );
  }

  set password(String? value) {
    if (value == null) {
      box.delete(BoxKeys.password);
      return;
    }
    box.put(BoxKeys.password, value);
  }
}
