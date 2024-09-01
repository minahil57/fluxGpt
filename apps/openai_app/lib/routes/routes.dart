import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../common/constant/constant.dart';
import '../common/constant/route_list.dart';
import '../features/chat/chat.dart';
import '../features/home/home.dart';
import '../features/image_generate/bloc/image_generate_bloc.dart';
import '../features/image_generate/image_generate_screen.dart';
import '../features/text_generate/bloc/text_generate_bloc.dart';
import '../features/text_generate/text_generate_screen.dart';
import '../notifier/conversation.dart';
import '../services/injection.dart';

class OpenAIRoutes {
  static Map<String, WidgetBuilder> getRoutesWithSettings(
      RouteSettings settings) {
    final routes = {
      RouteList.home: (context) => const HomeScreen(),
      RouteList.chatGPT: (context) {
        final conversation =
            Conversation(welcomeMessage: Constant.welcomeMessage);
        return ChangeNotifierProvider<Conversation>.value(
          value: conversation,
          child: const ChatScreen(),
        );
      },
      RouteList.imageGenerate: (context) => BlocProvider(
            create: (_) => ImageGenerateBloc(openAIService: injector()),
            child: const ImageGenerateScreen(),
          ),
      RouteList.textGenerate: (context) => BlocProvider(
            create: (context) => TextGenerateBloc(
              openAIService: injector(),
              textUseCases: Constant.testUseCases,
            ),
            child: const TextGenerateScreen(),
          ),
    };
    return routes;
  }

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteList.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case RouteList.chatGPT:
        return MaterialPageRoute(
          builder: (_) {
            final conversation =
                Conversation(welcomeMessage: Constant.welcomeMessage);
            return ChangeNotifierProvider<Conversation>.value(
              value: conversation,
              child: const ChatScreen(),
            );
          },
        );

      case RouteList.imageGenerate:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ImageGenerateBloc(openAIService: injector()),
            child: const ImageGenerateScreen(),
          ),
        );

      case RouteList.textGenerate:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => TextGenerateBloc(
              openAIService: injector(),
              textUseCases: Constant.testUseCases,
            ),
            child: const TextGenerateScreen(),
          ),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route unDefinedRoute([String message = 'Page not founds']) {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: Center(
            child: Text(message),
          ),
        );
      },
    );
  }
}
