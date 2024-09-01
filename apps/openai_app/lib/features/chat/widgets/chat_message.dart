import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:jumping_dot/jumping_dot.dart';
import 'package:share_plus/share_plus.dart';

import '../../../common/constant/constant.dart';
import '../../../common/tools/tools.dart';
import '../../../common/widgets/custom_image.dart';
import '../../../generated/l10n.dart';
import '../../../models/message.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({
    super.key,
    required this.message,
    this.onReSend,
    this.onSpeakTap,
    this.isSpeaking = false,
    this.onRemove,
  });
  final Message message;
  final Function? onReSend;
  final Function()? onSpeakTap;
  final bool isSpeaking;
  final Function()? onRemove;

  @override
  Widget build(BuildContext context) {
    var content = <Widget>[
      // Just show bot icon
      if (message.isBot) Avatar(showBottomMargin: message.isSuccess),
      const SizedBox(width: 8),
      (message.isBot && message.isLoading)
          ? WaittingCard(message: message)
          : TextCard(
              text: message.text,
              isUser: message.isUser,
              isError: message.isError,
              onRemove: onRemove,
              lastUpdatedAt: message.lastUpdatedAt!,
            ),
      if (message.isBot && message.isSuccess)
        isSpeaking
            ? ActiveIcon(
                message: message.text,
                onSpeakTap: onSpeakTap,
              )
            : Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: IconButton(
                  onPressed: () {
                    onSpeakTap?.call();
                  },
                  icon: Icon(
                    CupertinoIcons.play_circle,
                    color: Theme.of(context).hintColor,
                  ),
                ),
              ),
      if (message.isUser && message.isError) errorIcon(),
      const Expanded(flex: 1, child: SizedBox()),
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment:
            message.isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: message.isUser ? content.reversed.toList() : content,
      ),
    );
  }

  Widget errorIcon() {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: IconButton(
        onPressed: () {
          onReSend?.call();
        },
        icon: const Icon(CupertinoIcons.repeat),
      ),
    );
  }
}

class WaittingCard extends StatelessWidget {
  const WaittingCard({
    super.key,
    required this.message,
  });

  final Message message;

  @override
  Widget build(BuildContext context) {
    final isRTL = Tools.isRTL(context);
    return Flexible(
      flex: 10,
      child: Container(
        padding: const EdgeInsets.only(top: 12),
        width: 70,
        height: 45,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(15),
            topRight: const Radius.circular(15),
            bottomLeft: Radius.circular((message.isUser ^ isRTL) ? 15 : 0),
            bottomRight: Radius.circular((message.isUser ^ isRTL) ? 0 : 15),
          ),
        ),
        child: JumpingDots(
          radius: 6,
          animationDuration: const Duration(milliseconds: 300),
          innerPadding: 2,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}

class TextCard extends StatelessWidget {
  const TextCard({
    super.key,
    required this.text,
    required this.isUser,
    required this.isError,
    this.onRemove,
    required this.lastUpdatedAt,
  });

  final String text;
  final bool isUser;
  final bool isError;
  final Function()? onRemove;
  final DateTime lastUpdatedAt;

  showAlertDialog(BuildContext context) {
    Widget cancelButton = TextButton(
      child: Text(S.of(context).cancel),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    Widget continueButton = TextButton(
      child: Text(S.of(context).confirm),
      onPressed: () {
        onRemove?.call();
        Navigator.pop(context);
      },
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(S.of(context).confirm),
          content: Text(S.of(context).confirmDeleteItem),
          actions: [
            continueButton,
            cancelButton,
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 10,
      child: Column(
        crossAxisAlignment:
            isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          CupertinoContextMenu.builder(
            actions: <Widget>[
              CupertinoContextMenuAction(
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: text)).then(
                    (value) =>
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(S.of(context).copiedToClipboard),
                    )),
                  );

                  Navigator.pop(context);
                },
                trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
                child: Text(S.of(context).copy),
              ),
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                  final box = context.findRenderObject() as RenderBox?;
                  Share.share(
                    text,
                    sharePositionOrigin:
                        box!.localToGlobal(Offset.zero) & box.size,
                  );
                },
                trailingIcon: CupertinoIcons.share,
                child: Text(S.of(context).share),
              ),
              CupertinoContextMenuAction(
                onPressed: () async {
                  Navigator.of(context).pop();
                  showAlertDialog(context);
                },
                isDestructiveAction: true,
                trailingIcon: CupertinoIcons.delete,
                child: Text(S.of(context).delete),
              ),
            ],
            builder: (BuildContext context, Animation<double> animation) {
              final isRTL = Tools.isRTL(context);
              var backgroundColor = isUser
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).scaffoldBackgroundColor;
              if (isError) {
                backgroundColor = Theme.of(context).colorScheme.error;
              }
              return Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(15),
                    topRight: const Radius.circular(15),
                    bottomLeft: Radius.circular((isUser ^ isRTL) ? 15 : 0),
                    bottomRight: Radius.circular((isUser ^ isRTL) ? 0 : 15),
                  ),
                ),
                child: SingleChildScrollView(
                  child: animation.value == 1
                      ? SelectableText(
                          text,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: Tools.textColorForBackground(
                                      backgroundColor)),
                        )
                      : Text(
                          text,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: Tools.textColorForBackground(
                                      backgroundColor)),
                        ),
                ),
              );
            },
          ),
          const SizedBox(height: 2),
          Text(
            DateFormat.Hm().format(lastUpdatedAt),
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.showBottomMargin,
  });

  final bool showBottomMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 32, maxWidth: 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Theme.of(context).colorScheme.primary,
        border: Border.all(color: Colors.white),
      ),
      padding: const EdgeInsets.all(4),
      margin: showBottomMargin ? const EdgeInsets.only(bottom: 16) : null,
      child: CustomImage(
        imageUrl: Theme.of(context).brightness == Brightness.dark
            ? Constant.lightIcon
            : Constant.darkIcon,
        useExtendedImage: true,
        color: Colors.white,
      ),
    );
  }
}

class ActiveIcon extends StatefulWidget {
  const ActiveIcon({super.key, required this.message, this.onSpeakTap});

  final String message;
  final Function()? onSpeakTap;

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
    final isRTL = Tools.isRTL(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: AnimatedBuilder(
        animation: _controller,
        child: IconButton(
          onPressed: () {
            widget.onSpeakTap?.call();
          },
          icon: Icon(
            isRTL
                ? CupertinoIcons.radiowaves_left
                : CupertinoIcons.radiowaves_right,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.scale(
            scale: _controller.value,
            child: child,
          );
        },
      ),
    );
  }
}
