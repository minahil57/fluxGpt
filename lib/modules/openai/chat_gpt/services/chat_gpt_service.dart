import 'package:inspireui/utils/logs.dart';
import 'package:openai/common/constant/route_list.dart';
import 'package:openai/services/injection.dart';

import '../../../../routes/flux_navigate.dart';
import '../../../../services/chat/chat_service.dart';
import '../../model/openai_model.dart';

class ChatGPTService extends ChatService {
  bool _initialized = false;

  static final ChatGPTService _instance = ChatGPTService._internal();

  factory ChatGPTService() => _instance;

  ChatGPTService._internal();

  @override
  bool get enable => openAIConfig.enableChat;

  @override
  Future<void> changeLanguage(String? langCode) async {}

  @override
  void dispose() {}

  @override
  Future<void> init() async {
    if (!openAIConfig.enableChat) {
      return;
    }
    _initialized = true;
    configureDependencies(
      anonKey: openAIConfig.supabaseAnonKey,
      url: openAIConfig.supabaseUrl,
    );
  }

  @override
  Future<void> logout() async {}

  @override
  Future<void> showChatScreen() async {
    if (!openAIConfig.enableChat) {
      return;
    }

    if (!_initialized) {
      printError('[ChatGPT] has not been initialized!');
      return;
    }

    await FluxNavigate.pushNamed(RouteList.chatGPT);
  }
}
