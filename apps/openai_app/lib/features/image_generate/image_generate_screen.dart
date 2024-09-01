import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../common/widgets/dismiss_focus_overlay.dart';
import '../../common/widgets/dropdown_button_wrapper.dart';
import '../../common/widgets/image_galery.dart';
import '../../generated/l10n.dart';
import 'bloc/image_generate_bloc.dart';
import 'entities/image_generate_option.dart';
import 'widgets/image_generate_option_widget.dart';
import 'widgets/image_item.dart';

import 'bloc/image_generate_data_state.dart';

class ImageGenerateScreen extends StatefulWidget {
  const ImageGenerateScreen({Key? key}) : super(key: key);

  @override
  State<ImageGenerateScreen> createState() => _ImageGenerateScreenState();
}

class _ImageGenerateScreenState extends State<ImageGenerateScreen> {
  final textController = TextEditingController();
  late final ImageGenerateOptionController imageGenerateController;

  ImageGenerateBloc get _bloc => BlocProvider.of<ImageGenerateBloc>(context);

  @override
  void initState() {
    super.initState();
    imageGenerateController = ImageGenerateOptionController();
  }

  void generateImage() {
    var text = textController.text.trim();
    if (text.isNotEmpty) {
      _bloc.add(ImageGenerateEvent.generateImage(
        prompt: text,
        optionPayload: imageGenerateController.value,
      ));
    }
  }

  void closeErrorMessage() =>
      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();

  void onErrorMessage(String message) {
    closeErrorMessage();
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              closeErrorMessage();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void onTextChange(String value) {
    _bloc.add(ImageGenerateEvent.textChanged(text: value));
  }

  void onImageSizeChange(ImageSize? value) {
    _bloc.add(ImageGenerateEvent.imageSizeChanged(
      imageSize: value ?? ImageSize.small,
    ));
  }

  void onImageViewChange(ViewType? value) {
    _bloc.add(ImageGenerateEvent.imageViewChanged(
      viewType: value ?? ViewType.page,
    ));
  }

  void onTapImage({
    required int index,
    required List<String> images,
  }) {
    Navigator.of(context).push(
      FFTransparentPageRoute(
        pageBuilder: (context, _, ___) => ImageGallery(
          images: images,
          index: index,
          heroTagPrefix: 'image_generate',
        ),
      ),
    );
  }

  Future onShowOptions() async {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 12),
            Text(
              S.of(context).options,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ImageGenerateOptionWidget(
              imageGenerateOption: const ImageGenerateOption(
                artists: ['Pixar', 'Disney', 'Van Gogh', 'Mona Lisa'],
                styles: ['Abstract', 'Anime', 'Cartoon', 'Comic', 'Manga'],
                moods: ['Happy', 'Sad', 'Angry', 'Calm', 'Excited'],
                details: [
                  'Black and White',
                  'Color',
                  'Ambient Light',
                  'Sharp',
                  'Full face portrait',
                ],
                mediums: [
                  'Pencil',
                  'Canvas',
                  'Glass',
                  'Wood',
                  'Paper',
                  'Sculpture',
                  'Painting',
                  'Drawing',
                  'Digital Art',
                  'Mixed Media',
                ],
              ),
              imageGenerateOptionController: imageGenerateController,
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    textController.dispose();
    imageGenerateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        closeErrorMessage();
        return true;
      },
      child: DismissFocusOverlay(
        child: Scaffold(
          appBar: AppBar(
            title: Text(S.of(context).imageGenerate),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: BlocConsumer<ImageGenerateBloc, ImageGenerateState>(
                  listener: (context, state) {
                    state.whenOrNull(
                      error: (data, error) => onErrorMessage(error),
                    );
                  },
                  builder: (context, state) {
                    return CupertinoSearchTextField(
                      controller: textController,
                      enabled: state.maybeWhen(
                        loading: (_) => false,
                        orElse: () => true,
                      ),
                      style: Theme.of(context).textTheme.titleMedium,
                      onChanged: onTextChange,
                      onSubmitted: (value) => generateImage(),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              BlocBuilder<ImageGenerateBloc, ImageGenerateState>(
                builder: (context, state) {
                  final bool isIgnore = state.maybeWhen(
                    loading: (_) => true,
                    orElse: () => false,
                  );
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      height: 46,
                      child: IgnorePointer(
                        ignoring: isIgnore,
                        child: Row(
                          children: [
                            Expanded(
                              child: InputDecorator(
                                decoration: InputDecoration(
                                  enabled: !isIgnore,
                                  labelText: S.of(context).imageSize,
                                  border: const OutlineInputBorder(),
                                  contentPadding: EdgeInsets.zero,
                                  floatingLabelAlignment:
                                      FloatingLabelAlignment.center,
                                ),
                                child: DropdownButtonWrapper<ImageSize>(
                                  items: ImageSize.values,
                                  displayValue: (imageSize) =>
                                      imageSize?.value ?? '',
                                  onChanged: onImageSizeChange,
                                  value: state.data.imageSize,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: InputDecorator(
                                decoration: InputDecoration(
                                  enabled: !isIgnore,
                                  labelText: S.of(context).viewType,
                                  border: const OutlineInputBorder(),
                                  contentPadding: EdgeInsets.zero,
                                  floatingLabelAlignment:
                                      FloatingLabelAlignment.center,
                                ),
                                child: DropdownButtonWrapper<ViewType>(
                                  items: ViewType.values,
                                  displayValue: (imageSize) =>
                                      imageSize?.value ?? '',
                                  onChanged: onImageViewChange,
                                  value: state.data.viewType,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
              Expanded(
                child: BlocBuilder<ImageGenerateBloc, ImageGenerateState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const SizedBox.shrink(),
                      loading: (_) => const Center(
                        child: CupertinoActivityIndicator(),
                      ),
                      success: (data, images) {
                        if (images.isEmpty) {
                          return Center(
                            child: Text(S.of(context).noImageGenerate),
                          );
                        }

                        if (state.data.viewType.isPage) {
                          return _buildCarouselImages(images);
                        }

                        return _buildGridViewImages(images);
                      },
                    );
                  },
                ),
              ),
              SafeArea(
                minimum: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ).copyWith(top: 4),
                top: false,
                bottom: false,
                maintainBottomViewPadding: false,
                child: BlocBuilder<ImageGenerateBloc, ImageGenerateState>(
                  builder: (context, state) {
                    return Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: OutlinedButton(
                            onPressed: state.maybeWhen(
                                orElse: () => onShowOptions,
                                loading: (_) => null),
                            child: Text(S.of(context).moreOptions),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          flex: 3,
                          child: ElevatedButton(
                            onPressed:
                                state.data.allowSubmit ? generateImage : null,
                            child: Text(S.of(context).generate),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridViewImages(List<String> images) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      itemCount: images.length,
      itemBuilder: (context, index) {
        final url = images[index];
        return ImageItem(
          imageUrl: url,
          onTap: () => onTapImage(
            images: images,
            index: index,
          ),
        );
      },
    );
  }

  Widget _buildCarouselImages(List<String> images) {
    return CarouselSlider.builder(
      itemCount: images.length,
      itemBuilder: (context, index, realIndex) {
        final url = images[index];
        return ImageItem(
          imageUrl: url,
          onTap: () => onTapImage(
            images: images,
            index: index,
          ),
        );
      },
      options: CarouselOptions(
        height: 400,
        viewportFraction: 0.8,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        pauseAutoPlayOnTouch: true,
        aspectRatio: 2,
        onPageChanged: (index, reason) {
          // setState(() {
          //   _current = index;
          // });
        },
      ),
    );
  }
}

/// Transparent Page Route
class FFTransparentPageRoute<T> extends PageRouteBuilder<T> {
  FFTransparentPageRoute({
    RouteSettings? settings,
    required RoutePageBuilder pageBuilder,
    RouteTransitionsBuilder transitionsBuilder = _defaultTransitionsBuilder,
    Duration transitionDuration = const Duration(milliseconds: 150),
    bool barrierDismissible = false,
    Color? barrierColor,
    String? barrierLabel,
    bool maintainState = true,
  }) : super(
          settings: settings,
          opaque: false,
          pageBuilder: pageBuilder,
          transitionsBuilder: transitionsBuilder,
          transitionDuration: transitionDuration,
          barrierDismissible: barrierDismissible,
          barrierColor: barrierColor,
          barrierLabel: barrierLabel,
          maintainState: maintainState,
        );
}

Widget _defaultTransitionsBuilder(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  return FadeTransition(
    opacity: CurvedAnimation(
      parent: animation,
      curve: Curves.easeOut,
    ),
    child: child,
  );
}
