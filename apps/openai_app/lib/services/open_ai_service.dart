import '../features/image_generate/entities/image_generate_option_payload.dart';

abstract class OpenAIService {
  Future<String?> sendMessage(String prompt);

  Future<List<String>?> generateImage({
    required String prompt,
    required String imageSize,
    ImageGenerateOptionPayload? optionPayload,
  });
}
