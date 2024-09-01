import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:provider/provider.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../common/constant/constant.dart';
import '../../common/tools/tools.dart';
import '../../common/widgets/custom_image.dart';
import '../../common/widgets/dismiss_focus_overlay.dart';
import '../../models/message.dart';
import '../../notifier/conversation.dart';
import 'widgets/app_bar_mixin.dart';
import 'widgets/chat_message.dart';
import 'widgets/input_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    super.key,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with AppBarMixin {
  late final TextEditingController _textEditingController;
  late final ScrollController _scrollController;
  late FlutterTts flutterTts;

  late SpeechToText speech;
  String _currentLocaleId = 'en-US';

  // Will store the current id of the message being played
  final ValueNotifier<String?> textToSpeech = ValueNotifier<String?>(null);
  final ValueNotifier<bool> speechToText = ValueNotifier<bool>(false);

  @override
  void initState() {
    _textEditingController = TextEditingController();
    _scrollController = ScrollController();
    initTextToSpeech();
    initSpeechToText();
    super.initState();
    WidgetsBinding.instance.endOfFrame.then((_) async {
      if (mounted) {
        final lastMessage = conversationModel.conversation.elementAtOrNull(0);
        if (lastMessage != null && lastMessage.isUser && lastMessage.isError) {
          conversationModel.reSendMessage(lastMessage, showErrorMessage);
        }
      }
    });
  }

  initTextToSpeech() {
    flutterTts = FlutterTts();

    _setAwaitOptions();

    flutterTts.setIosAudioCategory(
      IosTextToSpeechAudioCategory.playback,
      [
        IosTextToSpeechAudioCategoryOptions.allowBluetooth,
        IosTextToSpeechAudioCategoryOptions.allowBluetoothA2DP,
        IosTextToSpeechAudioCategoryOptions.mixWithOthers
      ],
      IosTextToSpeechAudioMode.voicePrompt,
    );

    flutterTts.setStartHandler(() {
      debugPrint("Playing");
    });

    flutterTts.setCompletionHandler(() {
      debugPrint("Complete");
      // Reset id message after stop speaking
      textToSpeech.value = null;
    });

    flutterTts.setCancelHandler(() {
      // Handle if call flutterTts.stop() on Android only
      if (Platform.isAndroid) {
        debugPrint("Cancel");
        // Reset id message after stop speaking
        textToSpeech.value = null;
      }
    });

    flutterTts.setErrorHandler((msg) {
      debugPrint("Error: $msg");
      textToSpeech.value = null;
    });
  }

  Future _speak(String? text) async {
    await flutterTts.setVolume(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.setPitch(1.0);

    if (text != null) {
      if (text.isNotEmpty) {
        await flutterTts.speak(text);
        textToSpeech.value = null;
      }
    }
  }

  Future _setAwaitOptions() async {
    await flutterTts.awaitSpeakCompletion(true);
  }

  Future<void> initSpeechToText() async {
    speech = SpeechToText();
    // We don't use speechProvider because the variable isListening changes only when
    // it receives any voices, (it doesn't use notifyListener so can't update status)
    var hasSpeech = await speech.initialize(
      onError: (val) => debugPrint('onError: $val'),
      debugLogging: true,
    );
    if (hasSpeech) {
      // If you put listener function in initialize,
      // it will throw an exception when you dispose and then re-initialize
      speech.statusListener = statusListener;
      var systemLocale = await speech.systemLocale();
      _currentLocaleId = systemLocale?.localeId ?? 'en-US';
    }

    if (!mounted) return;
    // Update speech.isAvailable
    setState(() {});
  }

  // Handle if speech stops automatically without onVoiceTap
  void statusListener(String status) {
    debugPrint(status);
    if (status == 'listening') {
      speechToText.value = true;
    } else {
      speechToText.value = false;
    }
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _scrollController.dispose();
    flutterTts.stop();
    speech.statusListener = null;
    speech.stop();
    textToSpeech.dispose();
    speechToText.dispose();
    super.dispose();
  }

  void onSpeakTap(Message message) async {
    if (speechToText.value == true) {
      await speech.stop();
    }
    if (textToSpeech.value == null) {
      textToSpeech.value = message.id;
      await _speak(message.text);
    } else {
      await flutterTts.stop();
      textToSpeech.value = null;
    }
  }

  void onVoiceTap() async {
    if (textToSpeech.value != null) {
      await flutterTts.stop();
    }
    if (speechToText.value == false) {
      if (speech.isAvailable) {
        speechToText.value = true;
        speech.listen(
          cancelOnError: true,
          listenFor: const Duration(seconds: 30), // Maximum to listen is 30s
          pauseFor: const Duration(seconds: 5), // Maximum if not detected is 5s
          localeId: _currentLocaleId,
          onResult: (value) {
            if (value.recognizedWords.isNotEmpty) {
              _textEditingController
                ..text = value.recognizedWords
                ..selection = TextSelection.collapsed(
                    offset: value.recognizedWords.length);
            }
          },
        );
      }
    } else {
      speechToText.value = false;
      speech.stop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        closeErrorMessage();
        if (textToSpeech.value != null) {
          await flutterTts.stop();
        }
        if (speechToText.value == true) {
          await speech.stop();
        }
        return true;
      },
      child: Stack(
        children: [
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          if (Constant.chatBackgroundImage.isNotEmpty)
            Positioned.fill(
              child: CustomImage(
                imageUrl: Constant.chatBackgroundImage,
                fit: BoxFit.cover,
                useExtendedImage: true,
                color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
              ),
            ),
          Positioned.fill(
            child: Container(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            ),
          ),
          DismissFocusOverlay(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: buildAppBar(),
              body: Consumer<Conversation>(
                builder: (context, model, child) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        controller: _scrollController,
                        itemCount: model.conversation.length,
                        shrinkWrap: true,
                        reverse: true,
                        itemBuilder: (context, index) {
                          var message = model.conversation[index];
                          return ValueListenableBuilder(
                            valueListenable: textToSpeech,
                            builder: (context, messageIdSpeaking, child) =>
                                ChatMessage(
                              message: message,
                              onReSend: () => model.reSendMessage(
                                  message, showErrorMessage),
                              onSpeakTap: () => onSpeakTap(message),
                              isSpeaking: messageIdSpeaking == message.id,
                              onRemove: () => model.removeMessage(message),
                            ),
                          );
                        },
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: speechToText,
                      builder: (context, isListening, child) => InputWidget(
                        textEditingController: _textEditingController,
                        isListening: isListening,
                        onVoiceTap: onVoiceTap,
                        micAvailable: speech.isAvailable,
                        onSubmitted: () {
                          var text = _textEditingController.text.trim();
                          if (text.isNotEmpty) {
                            model.sendMessage(
                              Message(
                                id: Tools.randomString(),
                                text: text,
                                lastUpdatedAt: DateTime.now(),
                              ),
                              showErrorMessage,
                            );
                            _textEditingController.clear();
                            _scrollController.animateTo(
                              0.0,
                              curve: Curves.easeOut,
                              duration: const Duration(milliseconds: 200),
                            );
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
