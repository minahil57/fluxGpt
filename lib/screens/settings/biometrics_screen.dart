import 'dart:async';

import 'package:flutter/material.dart';

import '../../common/config.dart';
import '../../common/constants.dart';
import '../../common/tools/biometrics_tools.dart';
import '../../common/tools/flash.dart';
import '../../data/boxes.dart';
import '../../generated/l10n.dart';
import '../../services/index.dart';
import '../base_screen.dart';
import '../common/app_bar_mixin.dart';

class BiometricsScreen extends StatefulWidget {
  @override
  BaseScreen<BiometricsScreen> createState() => _BiometricsScreenState();
}

class _BiometricsScreenState extends BaseScreen<BiometricsScreen>
    with AppBarMixin {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final isWalletEnabled = kDefaultSettings.contains('wallet');
    final isCheckoutDisabled = ['wordpress'].contains(serverConfig['type']);
    return renderScaffold(
      routeName: RouteList.biometrics,
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(
          padding: showAppBar(RouteList.biometrics) ? EdgeInsets.zero : null,
        ),
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            title: Text(
              S.of(context).lockScreenAndSecurity,
              style: const TextStyle(color: Colors.white),
            ),
            backgroundColor: Theme.of(context).primaryColor,
            leading: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          body: Column(
            children: [
              if (isCheckoutDisabled)
                ListTile(
                  title: Text(S.of(context).enableForCheckout),
                  trailing: Switch(
                    value: BiometricsBox().biometricsEnableCheckout,
                    onChanged: (bool value) {
                      BiometricsBox().biometricsEnableCheckout = value;
                      setState(() {});
                    },
                  ),
                ),
              if (isWalletEnabled)
                ListTile(
                  title: Text(S.of(context).enableForWallet),
                  trailing: Switch(
                    value: BiometricsBox().biometricsEnableWallet,
                    onChanged: (bool value) {
                      BiometricsBox().biometricsEnableWallet = value;
                      setState(() {});
                    },
                  ),
                ),
              ListTile(
                title: Text(S.of(context).enableForLogin),
                trailing: Switch(
                  value: BiometricsTools.instance.isLoginSupported,
                  onChanged: (bool value) async {
                    if (value == true) {
                      await _showLoginForm(context);
                      setState(() {});
                    } else {
                      BiometricsTools.instance.deleteUsernameAndPassword();
                      BiometricsBox().biometricsEnableLogin = value;
                      setState(() {});
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showLoginForm(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(S.of(context).login),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(hintText: S.of(context).username),
                ),
                TextField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(hintText: S.of(context).password),
                )
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: Text(S.of(context).cancel),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                return TextButton(
                  child: Text(
                      _isLoading ? S.of(context).loading : S.of(context).login),
                  onPressed: () {
                    _login(context, setState);
                  },
                );
              })
            ],
          );
        });
  }

  Future _login(BuildContext context, StateSetter setState) async {
    try {
      if (_usernameController.text.isEmpty ||
          _passwordController.text.isEmpty) {
        unawaited(
          FlashHelper.errorMessage(context, message: S.of(context).pleaseInput),
        );
        return;
      }
      setState(() {
        _isLoading = true;
      });
      var user = await Services().api.login(
          username: _usernameController.text,
          password: _passwordController.text);
      setState(() {
        _isLoading = false;
      });
      if (user != null) {
        BiometricsTools.instance.saveUsernameAndPassword(
            _usernameController.text, _passwordController.text);
        BiometricsBox().biometricsEnableLogin = true;
        Navigator.pop(context);
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      await FlashHelper.errorMessage(
        context,
        message: e.toString(),
      );
    }
  }
}
