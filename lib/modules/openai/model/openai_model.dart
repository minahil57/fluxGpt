import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/config.dart';

part 'openai_model.freezed.dart';
part 'openai_model.g.dart';

ChatGPT get openAIConfig => ChatGPT.fromJson(
    Map<String, dynamic>.from(Configurations.openAIConfig ?? {}));

@freezed
class ChatGPT with _$ChatGPT {
  const factory ChatGPT({
    @Default(false) bool enableChat,
    @Default('') supabaseAnonKey,
    @Default('') supabaseUrl,
  }) = _ChatGPT;

  factory ChatGPT.fromJson(Map<String, dynamic> json) =>
      _$ChatGPTFromJson(json);

  const ChatGPT._();
}
