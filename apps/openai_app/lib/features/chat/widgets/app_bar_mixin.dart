import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../../common/tools/tools.dart';
import '../../../common/widgets/custom_image.dart';
import '../../../generated/l10n.dart';
import '../../../notifier/conversation.dart';

enum Actions { regenerate, clear, share }

mixin AppBarMixin<T extends StatefulWidget> on State<T> {
  Conversation get conversationModel =>
      Provider.of<Conversation>(context, listen: false);

  void closeErrorMessage() =>
      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();

  void showErrorMessage(String error) {
    // Close the previous error message
    closeErrorMessage();

    // If you set onVisible with delay to close message, it will throw an exception if we pop this screen before the delay finishes
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: Text(error),
        actions: [
          TextButton(
            onPressed: closeErrorMessage,
            child: const Text('Skip'),
          ),
        ],
      ),
    );
  }

  void shareConversation(BuildContext context) async {
    final conversation = await conversationModel.shareConversation();
    if (mounted) {
      final box = context.findRenderObject() as RenderBox?;
      Share.share(
        conversation,
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
      );
    }
  }

  void showClearAlertDialog(BuildContext context) {
    Widget cancelButton = TextButton(
      child: Text(S.of(context).cancel),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    Widget continueButton = TextButton(
      child: Text(S.of(context).confirm),
      onPressed: () {
        conversationModel.clearConversation();
        Navigator.pop(context);
      },
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(S.of(context).confirm),
          content: Text(S.of(context).confirmDelete),
          actions: [
            continueButton,
            cancelButton,
          ],
        );
      },
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      titleSpacing: 0.0,
      backgroundColor: Theme.of(context).colorScheme.primary,
      title: Row(
        children: [
          Container(
            constraints: const BoxConstraints(maxHeight: 48, maxWidth: 48),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
              border: Border.all(color: Colors.white),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const CustomImage(
                imageUrl: 'https://pipedream.com/s.v0/app_mWnhBo/logo/orig',
                useExtendedImage: true,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            S.of(context).chatGPT,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Tools.textColorForBackground(
                      Theme.of(context).colorScheme.primary),
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
      actions: [
        PopupMenuButton<Actions>(
          icon: const Icon(Icons.more_vert_rounded),
          onSelected: (Actions item) {
            switch (item) {
              case Actions.clear:
                showClearAlertDialog(context);
                break;
              case Actions.share:
                shareConversation(context);
                break;
              case Actions.regenerate:
              default:
                conversationModel.reGenerateResponse(showErrorMessage);
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<Actions>>[
            PopupMenuItem<Actions>(
              value: Actions.regenerate,
              child: Text(S.of(context).regenerateResponse),
            ),
            PopupMenuItem<Actions>(
              value: Actions.share,
              child: Text(S.of(context).share),
            ),
            PopupMenuItem<Actions>(
              value: Actions.clear,
              child: Text(S.of(context).clearConversation),
            ),
          ],
        ),
      ],
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(16.0),
        child: SizedBox(),
      ),
    );
  }
}
