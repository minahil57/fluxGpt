import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../generated/languages/local_widgets_localizations.dart';

class Tools {
  /// Generate random key
  static String randomString({length = 10}) {
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    var rnd = Random(DateTime.now().microsecondsSinceEpoch);
    var result = '';
    for (var i = 0; i < length; i++) {
      result += chars[rnd.nextInt(chars.length)];
    }
    return result;
  }

  static Color textColorForBackground(Color backgroundColor) {
    if (ThemeData.estimateBrightnessForColor(backgroundColor) ==
        Brightness.dark) {
      return Colors.white;
    }

    return Colors.black;
  }

  static bool isRTL(BuildContext context) {
    var languageCode = Localizations.localeOf(context).languageCode;
    return Bidi.isRtlLanguage(languageCode) ||
        LocalWidgetsLocalizations.isRtlLanguage(languageCode);
  }
}
