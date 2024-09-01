import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({
    super.key,
    required this.textEditingController,
    required this.onSubmitted,
    required this.isListening,
    required this.onVoiceTap,
    required this.micAvailable,
  });

  final TextEditingController textEditingController;
  final Function onSubmitted;
  final bool isListening;
  final Function() onVoiceTap;
  final bool micAvailable;

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(28),
            ),
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: widget.onVoiceTap,
                padding: const EdgeInsets.only(bottom: 8),
                tooltip: !widget.micAvailable
                    ? S.of(context).speechNotAvailable
                    : S.of(context).tapTheMicToTalk,
                icon: widget.isListening
                    ? const ActiveIcon()
                    : Icon(
                        !widget.micAvailable
                            ? CupertinoIcons.mic_off
                            : CupertinoIcons.mic_fill,
                        color: Theme.of(context).hintColor,
                      ),
              ),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 5,
                  textInputAction: TextInputAction.newline,
                  decoration: InputDecoration(
                    hintText: widget.isListening
                        ? S.of(context).listening
                        : S.of(context).typeAMessage,
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(bottom: 8),
                  ),
                  controller: widget.textEditingController,
                  onSubmitted: (value) {
                    widget.onSubmitted.call();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: IconButton(
                    padding: const EdgeInsets.only(left: 4),
                    icon: const Icon(Icons.send_rounded),
                    color: Colors.white,
                    onPressed: () async {
                      if (!widget.isListening) {
                        widget.onSubmitted.call();
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActiveIcon extends StatefulWidget {
  const ActiveIcon({
    super.key,
  });

  @override
  State<ActiveIcon> createState() => _ActiveIconState();
}

class _ActiveIconState extends State<ActiveIcon> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    value: 1,
    duration: const Duration(seconds: 1),
    reverseDuration: const Duration(seconds: 1),
    lowerBound: 0.75,
    upperBound: 1.25,
    vsync: this,
  )
    ..forward()
    ..repeat(reverse: true);

  @override
  void dispose() {
    _controller.stop();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: Icon(
        CupertinoIcons.mic_fill,
        color: Theme.of(context).colorScheme.primary,
      ),
      builder: (BuildContext context, Widget? child) {
        return Transform.scale(
          scale: _controller.value,
          child: child,
        );
      },
    );
  }
}
