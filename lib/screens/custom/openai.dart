import 'package:flutter/material.dart';
import 'package:openai/common/constant/constant.dart';
import 'package:openai/main.dart';
import 'package:openai/services/injection.dart';

class OpenAIScreen extends StatefulWidget {
  final String? data;

  const OpenAIScreen({this.data});

  @override
  State<OpenAIScreen> createState() => _OpenAIScreenState();
}

class _OpenAIScreenState extends State<OpenAIScreen> {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();

    configureDependencies(
      anonKey: Constant.supabaseAnonKey,
      url: Constant.supabaseUrl,
    );

    return const MyApp();
  }
}
