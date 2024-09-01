import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'common/constant/constant.dart';
import 'common/constant/route_list.dart';
import 'common/widgets/dismiss_focus_overlay.dart';
import 'generated/l10n.dart';
import 'routes/routes.dart';
import 'services/injection.dart';

void main() {
  configureDependencies(
    anonKey: Constant.supabaseAnonKey,
    url: Constant.supabaseUrl,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DismissFocusOverlay(
      child: MaterialApp(
        title: 'Open AI',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: OpenAIRoutes.getRoute,
        initialRoute: RouteList.home,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.light,
      ),
    );
  }
}
