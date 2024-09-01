import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../features/image_generate/entities/image_generate_option_payload.dart';
import '../generated/l10n.dart';
import 'open_ai_service.dart';

class OpenAIServiceImpl implements OpenAIService {
  final supabaseClient = Supabase.instance.client;

  OpenAIServiceImpl();

  @override
  Future<String?> sendMessage(String prompt) async {
    try {
      final response = await supabaseClient.functions.invoke(
        'completion',
        body: {
          'prompt': prompt,
          'stop': ['User:', 'Bot:'],
        },
        responseType: ResponseType.arraybuffer,
      );

      if (response.status == 200) {
        final bodyBytes = response.data;
        const utf8decoder = Utf8Decoder();
        final Map<String, dynamic> decodedBody =
            jsonDecode(utf8decoder.convert(bodyBytes)) as Map<String, dynamic>;
        final completed = decodedBody['completion'] as String;
        debugPrint('Message: $decodedBody');
        if (completed.isNotEmpty) {
          return completed;
        }
      }
      return null;
    } catch (e) {
      throw S.current.pleaseCheckConnection;
    }
  }

  @override
  Future<List<String>?> generateImage({
    required String prompt,
    required String imageSize,
    ImageGenerateOptionPayload? optionPayload,
  }) async {
    try {
      final response =
          await supabaseClient.functions.invoke('generate-image', body: {
        'prompt': prompt,
        'image_size': imageSize,
        if (optionPayload != null) ...optionPayload.toJson(),
      });

      if (response.status == 200) {
        final result = response.data as Map<String, dynamic>;
        if (result['data'] != null && result['data'].isNotEmpty) {
          final images = List.from(result['data'] as List)
              .map((e) => e['url'])
              .whereType<String>()
              .toList();

          return images;
        }
      }
      return null;
    } catch (e) {
      throw S.current.pleaseCheckConnection;
    }
  }
}
