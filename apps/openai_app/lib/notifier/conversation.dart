import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import '../common/constant/constant.dart';
import '../common/tools/tools.dart';
import '../generated/l10n.dart';
import '../models/message.dart';
import '../services/injection.dart';
import '../services/open_ai_service.dart';

class Conversation extends ChangeNotifier {
  Conversation._internal();

  static final Conversation _instance = Conversation._internal();

  factory Conversation({String? welcomeMessage}) {
    if (welcomeMessage != null &&
        welcomeMessage.isNotEmpty &&
        _instance._conversation.isEmpty) {
      var introMessage = Message(
        id: Tools.randomString(),
        text: welcomeMessage,
        status: MessageStatus.success,
        type: MessageType.bot,
        lastUpdatedAt: DateTime.now(),
      );
      _instance._conversation.insert(0, introMessage);
    }
    return _instance;
  }

  final _service = injector<OpenAIService>();

  final List<Message> _conversation = [];

  List<Message> get conversation => _conversation;

  Future<void> _generateResponse(Message message, Function(String) showError,
      {bool regenerate = false}) async {
    var reverseConversation = _conversation.reversed.toList();
    if (regenerate) {
      reverseConversation = reverseConversation
          .take(reverseConversation.indexOf(message) + 1)
          .toList();
    }

    var replyMessage = Message(
      id: Tools.randomString(),
      type: MessageType.bot,
      status: MessageStatus.loading,
    );
    _conversation.insert(0, replyMessage);
    reverseConversation.add(replyMessage);
    notifyListeners();

    final String startMessage = Constant.roleplayIntroduction.isNotEmpty
        ? '[${Constant.roleplayIntroduction}]\n\n'
        : '';
    try {
      var prompts = reverseConversation.fold<String>(
          startMessage,
          (previousValue, element) =>
              '$previousValue${element.type.roleName}: ${element.text}\n${element.isBot ? '\n' : ''}');
      var replyText = await _service.sendMessage(prompts);
      if (replyText != null) {
        replyMessage.text = replyText;
        replyMessage.status = MessageStatus.success;
        replyMessage.lastUpdatedAt = DateTime.now();
      } else {
        await Future.delayed(const Duration(milliseconds: 500));
        _conversation.removeAt(0);
        message.status = MessageStatus.error;
        showError.call(S.current.somethingWhenWrong);
      }
    } catch (e) {
      await Future.delayed(const Duration(milliseconds: 500));
      _conversation.removeAt(0);
      message.status = MessageStatus.error;
      showError.call(e.toString());
    }
    notifyListeners();
  }

  Future<void> sendMessage(Message message, Function(String) showError) async {
    _conversation.insert(0, message);
    notifyListeners();
    await _generateResponse(message, showError);
  }

  Future<void> reSendMessage(
      Message message, Function(String) showError) async {
    if (message.isError) {
      message.status = MessageStatus.success;
      notifyListeners();
    }
    await _generateResponse(message, showError);
  }

  Future<void> reGenerateResponse(Function(String) showError) async {
    Message? lastUserMessage = _conversation.firstWhereOrNull((m) => m.isUser);
    if (lastUserMessage != null && lastUserMessage.text.isNotEmpty) {
      await _generateResponse(lastUserMessage, showError, regenerate: true);
    }
  }

  Future<void> clearConversation() async {
    _conversation.clear();
    notifyListeners();
  }

  Future<void> removeMessage(Message message) async {
    _conversation.removeWhere((element) => element.id == message.id);
    notifyListeners();
  }

  Future<String> shareConversation() async {
    var reverseConversation = _conversation.reversed.toList();
    var prompts = reverseConversation.fold<String>(
        '',
        (previousValue, element) =>
            '$previousValue${element.type.roleName}: ${element.text}\n${element.isBot ? '\n' : ''}');
    return prompts;
  }
}
