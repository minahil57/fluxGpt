import 'package:flutter/material.dart';
// import 'package:flutterflow/app_state.dart';
// import 'package:flutterflow/flutter_flow/flutter_flow_theme.dart';
import 'package:flutterflow/main.dart';
// import 'package:provider/provider.dart';
import '../common/app_bar_mixin.dart';

class FlutterFlowScreen extends StatefulWidget {
  final String? data;

  const FlutterFlowScreen({this.data});

  @override
  State<FlutterFlowScreen> createState() => _FlutterFlowScreenState();
}

class _FlutterFlowScreenState extends State<FlutterFlowScreen>
    with AppBarMixin {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();

    // FlutterFlowTheme.initialize();

    // final appState = FFAppState();

    // return ChangeNotifierProvider(
    //   create: (context) => appState,
    //   child: Expanded(
    //     child: MyApp(),
    //   ),
    // );

    return MyApp();
  }
}
