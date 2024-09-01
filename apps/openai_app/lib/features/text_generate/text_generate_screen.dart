import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/widgets/animation/animated_clip_rect.dart';
import '../../common/widgets/animation/animated_flip.dart';
import '../../common/widgets/dropdown_button_wrapper.dart';
import '../../generated/l10n.dart';
import 'bloc/text_generate_bloc.dart';
import 'entities/text_use_case.dart';

class TextGenerateScreen extends StatefulWidget {
  const TextGenerateScreen({Key? key}) : super(key: key);

  @override
  State<TextGenerateScreen> createState() => _TextGenerateScreenState();
}

class _TextGenerateScreenState extends State<TextGenerateScreen> {
  TextGenerateBloc get bloc => context.read<TextGenerateBloc>();

  final contentController = TextEditingController();

  final useCaseMapData = <int, String>{};

  void clearContent() {
    // show cupertino dialog style notice user need confirm to clear content
    showCupertinoDialog<bool>(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(S.of(context).clearContent),
          content: Text(S.of(context).clearConfirm),
          actions: [
            CupertinoDialogAction(
              child: Text(S.of(context).cancel),
              onPressed: () => Navigator.of(context).pop(false),
            ),
            CupertinoDialogAction(
              isDefaultAction: true,
              isDestructiveAction: true,
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(S.of(context).clear),
            ),
          ],
        );
      },
    ).then((value) {
      if (value == true) {
        contentController.clear();
        textChanged('');
      }
    });
  }

  void onUseCaseChanged(TextUseCase? useCase) {
    bloc.add(TextGenerateEvent.useCaseChanged(useCase: useCase!));
  }

  void generateContent() {
    bloc.add(TextGenerateEvent.generateContent(
      dataFields: useCaseMapData.values.toList(),
    ));
  }

  void changeToEditMode() {
    bloc.add(const TextGenerateEvent.changeToEditMode());
  }

  void changeToViewMode() {
    textChanged(contentController.text);
    bloc.add(const TextGenerateEvent.changeToViewMode());
  }

  void completeAnimatedText() {
    if (contentController.text.isEmpty) {
      return;
    }
    bloc.add(const TextGenerateEvent.completeAnimatedText());
  }

  void textChanged(String text) {
    bloc.add(TextGenerateEvent.textChanged(text));
  }

  void onCopyContent() {
    bloc.add(TextGenerateEvent.copyContent(contentController.text));
  }

  void listenStateChanged(context, TextGenerateState state) {
    state.whenOrNull(
      success: (data) {
        contentController.text = data.content;
      },
      loading: (_) {
        contentController.text = '';
        FocusScope.of(context).requestFocus(FocusNode());
      },
      failure: (_, errorMessage) {
        showMessage(errorMessage);
      },
      copiedContent: (_) {
        showMessage(S.of(context).copiedToClipboard);
      },
      editMode: (data) {
        contentController.text = data.content;
      },
    );
  }

  void closeMessage() => ScaffoldMessenger.of(context).clearMaterialBanners();

  void showMessage(String message) {
    closeMessage();
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: Text(message),
        onVisible: () {
          Future.delayed(const Duration(seconds: 2)).then((value) {
            if (mounted) {
              closeMessage();
            }
          });
        },
        actions: [
          TextButton(
            onPressed: () {
              closeMessage();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  // @override
  // void initState() {
  //   super.initState();
  //   bloc.add(const TextGenerateEvent.started());
  // }

  @override
  void dispose() {
    super.dispose();
    contentController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TextGenerateBloc, TextGenerateState>(
      listener: listenStateChanged,
      builder: (context, state) {
        final selectedUseCase = state.data.selectedUseCase;
        final isEditing = state.maybeWhen(
          orElse: () => false,
          editMode: (_) => true,
        );
        return Scaffold(
          resizeToAvoidBottomInset: isEditing,
          appBar: AppBar(
            title: Text(S.of(context).textGenerate),
          ),
          body: WillPopScope(
            onWillPop: () async {
              closeMessage();
              return true;
            },
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedSlide(
                        offset:
                            !isEditing ? Offset.zero : const Offset(0, -1.25),
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.linear,
                        child: AnimatedClipRect(
                          open: !isEditing,
                          duration: const Duration(milliseconds: 250),
                          reverseDuration: const Duration(milliseconds: 250),
                          curve: Curves.linear,
                          reverseCurve: Curves.easeInOut,
                          alignment: Alignment.bottomCenter,
                          child: AnimatedSize(
                            duration: const Duration(milliseconds: 250),
                            reverseDuration: const Duration(milliseconds: 250),
                            alignment: Alignment.topCenter,
                            curve: Curves.easeInOut,
                            child: SizedBox(
                              // height: state.data.isEditing ? 0 : null,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(height: 16),
                                  Text(S.of(context).chooseUseCase),
                                  const SizedBox(height: 8),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                    return DropdownButtonWrapper(
                                      items: state.data.useCases,
                                      onChanged: onUseCaseChanged,
                                      value: state.data.selectedUseCase,
                                      displayValue: (value) =>
                                          value?.name ?? '',
                                      dropdownWidth:
                                          constraints.maxWidth * 2 / 3,
                                      buttonHeight: 48,
                                    );
                                  }),
                                  const SizedBox(height: 12),
                                  ...List.generate(
                                    selectedUseCase.subUseCases.length,
                                    (index) {
                                      final subUseCase =
                                          selectedUseCase.subUseCases[index];
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Text(subUseCase.name),
                                          const SizedBox(height: 8),
                                          TextField(
                                            autocorrect: false,
                                            decoration: InputDecoration(
                                              border:
                                                  const OutlineInputBorder(),
                                              contentPadding:
                                                  const EdgeInsets.all(12),
                                              hintText: subUseCase.description,
                                            ),
                                            onChanged: (value) {
                                              useCaseMapData[index] = value;
                                            },
                                          ),
                                          if (index !=
                                              selectedUseCase
                                                      .subUseCases.length -
                                                  1)
                                            const SizedBox(height: 12),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlinedButton.icon(
                              onPressed: state.allowClear ? clearContent : null,
                              icon: const Icon(
                                CupertinoIcons.clear_circled,
                                size: 16,
                              ),
                              label: Text(S.of(context).clear),
                            ),
                            ElevatedButton.icon(
                              onPressed: state.allowCopy ? onCopyContent : null,
                              icon: const Icon(
                                Icons.copy_all_rounded,
                                size: 16,
                              ),
                              label: Text(S.of(context).copy),
                            ),
                            !isEditing
                                ? ElevatedButton.icon(
                                    onPressed: state.allowEdit
                                        ? changeToEditMode
                                        : null,
                                    icon: const Icon(
                                      Icons.mode_edit_outline_outlined,
                                      size: 16,
                                    ),
                                    label: Text(S.of(context).edit),
                                  )
                                : ElevatedButton.icon(
                                    onPressed: changeToViewMode,
                                    icon: const Icon(
                                      Icons.chrome_reader_mode_outlined,
                                      size: 16,
                                    ),
                                    label: Text(S.of(context).view),
                                  ),
                          ]
                              .expand((element) => [
                                    Expanded(child: element),
                                    const SizedBox(width: 8),
                                  ])
                              .toList()
                            ..removeLast(),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Expanded(
                        child: AnimatedFlip(
                          axis: Axis.vertical,
                          showFront: !isEditing,
                          duration: const Duration(milliseconds: 300),
                          frontWidget: InputDecorator(
                            expands: true,
                            textAlign: TextAlign.start,
                            textAlignVertical: TextAlignVertical.top,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              contentPadding: EdgeInsets.all(12),
                            ),
                            child: SingleChildScrollView(
                              reverse: true,
                              child: state.data.isCompleteAnimatedText
                                  ? Text(
                                      state.data.content,
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    )
                                  : AnimatedTextKit(
                                      key: ValueKey(state.data.content),
                                      animatedTexts: [
                                        TypewriterAnimatedText(
                                          state.data.content,
                                          textStyle: const TextStyle(
                                            fontSize: 16.0,
                                          ),
                                          speed:
                                              const Duration(milliseconds: 15),
                                        ),
                                      ],
                                      totalRepeatCount: 4,
                                      displayFullTextOnTap: true,
                                      isRepeatingAnimation: false,
                                      onFinished: completeAnimatedText,
                                      onTap: completeAnimatedText,
                                    ),
                            ),
                          ),
                          rearWidget: TextField(
                            maxLines: null,
                            autocorrect: false,
                            controller: contentController,
                            minLines: 50,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              contentPadding: const EdgeInsets.all(12),
                              fillColor: Theme.of(context)
                                  .dividerColor
                                  .withOpacity(0.03),
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                      SafeArea(
                        minimum: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 20,
                        ).copyWith(top: 4),
                        top: false,
                        bottom: false,
                        child: AnimatedSlide(
                          duration: const Duration(milliseconds: 250),
                          offset: isEditing
                              ? const Offset(0, 1)
                              : const Offset(0, 0),
                          child: AnimatedClipRect(
                            duration: const Duration(milliseconds: 250),
                            alignment: Alignment.bottomCenter,
                            open: !isEditing,
                            child: SizedBox(
                              // height: state.data.isEditing ? 0 : null,
                              width: double.infinity,
                              child: ElevatedButton.icon(
                                onPressed: isEditing ? null : generateContent,
                                icon: isEditing
                                    ? const SizedBox()
                                    : const Icon(Icons.create, size: 16),
                                label: Text(S.of(context).write),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                state.maybeWhen(loading: (_) {
                  return Container(
                    color: Colors.black.withOpacity(0.4),
                    child: const Center(
                      child: CupertinoActivityIndicator(
                        radius: 20,
                      ),
                    ),
                  );
                }, orElse: () {
                  return const SizedBox.shrink();
                }),
              ],
            ),
          ),
        );
      },
    );
  }
}
