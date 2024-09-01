import 'package:flutter/material.dart';
import 'package:openai/routes/routes.dart';

mixin OpenAIServiceMixin {
  dynamic getOpenAIRoutesWithSettings(RouteSettings settings) {
    return OpenAIRoutes.getRoutesWithSettings(settings);
  }
}
