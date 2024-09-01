import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'open_ai_service.dart';
import 'open_ai_service_impl.dart';

final injector = GetIt.instance;

void configureDependencies({
  required String url,
  required String anonKey,
}) async {
  injector.registerLazySingleton<OpenAIService>(() => OpenAIServiceImpl());

  await Supabase.initialize(url: url, anonKey: anonKey);
}
