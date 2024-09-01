import 'package:flutter/material.dart';

import '../../../common/widgets/dropdown_button_wrapper.dart';
import '../../../generated/l10n.dart';
import '../entities/image_generate_option_payload.dart';
import '../entities/image_generate_option.dart';

const _defaultValue = 'None';
const _maxItems = 10;

class ImageGenerateOptionWidget extends StatefulWidget {
  const ImageGenerateOptionWidget({
    Key? key,
    required this.imageGenerateOption,
    required this.imageGenerateOptionController,
  }) : super(key: key);

  final ImageGenerateOption imageGenerateOption;
  final ImageGenerateOptionController imageGenerateOptionController;

  @override
  State<ImageGenerateOptionWidget> createState() =>
      _ImageGenerateOptionWidgetState();
}

class _ImageGenerateOptionWidgetState extends State<ImageGenerateOptionWidget> {
  ImageGenerateOptionPayload get data =>
      widget.imageGenerateOptionController.value;

  ImageGenerateOptionController get controller =>
      widget.imageGenerateOptionController;

  List<String> get styles =>
      [_defaultValue, ...widget.imageGenerateOption.styles];

  List<String> get mediums =>
      [_defaultValue, ...widget.imageGenerateOption.mediums];

  List<String> get artists =>
      [_defaultValue, ...widget.imageGenerateOption.artists];

  List<String> get moods =>
      [_defaultValue, ...widget.imageGenerateOption.moods];

  List<String> get details =>
      [_defaultValue, ...widget.imageGenerateOption.details];

  final divider = const Divider(height: 2);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.imageGenerateOptionController,
      builder: (context, value, child) {
        return Column(
          children: [
            Column(
              children: [
                ListTile(
                  title: Text(S.of(context).numberOfImages),
                  subtitle: Text(S.of(context).numberOfImagesCondition),
                  trailing: DropdownButtonWrapper<int>(
                    items: List.generate(_maxItems, (index) => (index + 1)),
                    onChanged: (numberOfImages) {
                      controller.setNumberOfImages(numberOfImages ?? 1);
                    },
                    value: data.numberOfImages,
                  ),
                ),
                ListTile(
                  title: Text(S.of(context).style),
                  subtitle: Text(S.of(context).choseStyle),
                  trailing: DropdownButtonWrapper(
                    items: styles,
                    onChanged: (style) {
                      controller.setStyle(style);
                    },
                    value: data.style.effectiveValue,
                  ),
                ),
                ListTile(
                  title: Text(S.of(context).medium),
                  subtitle: Text(S.of(context).chooseMedium),
                  trailing: DropdownButtonWrapper(
                    items: mediums,
                    onChanged: (value) {
                      controller.setMedium(value);
                    },
                    value: data.medium.effectiveValue,
                  ),
                ),
                ListTile(
                  title: Text(S.of(context).mood),
                  subtitle: Text(S.of(context).chooseMood),
                  trailing: DropdownButtonWrapper(
                    items: moods,
                    onChanged: (value) {
                      controller.setMood(value);
                    },
                    value: data.mood.effectiveValue,
                  ),
                ),
                ListTile(
                  title: Text(S.of(context).artist),
                  subtitle: Text(S.of(context).chooseArtist),
                  trailing: DropdownButtonWrapper(
                    items: artists,
                    onChanged: (value) {
                      controller.setArtist(value);
                    },
                    value: data.artist.effectiveValue,
                  ),
                ),
                ListTile(
                  title: Text(S.of(context).detail),
                  subtitle: Text(S.of(context).chooseDetail),
                  trailing: DropdownButtonWrapper(
                    items: details,
                    onChanged: (value) {
                      controller.setDetail(value);
                    },
                    value: data.detail.effectiveValue,
                  ),
                ),
              ]
                  .expand((element) => [
                        element,
                        divider,
                      ])
                  .toList()
                ..removeLast(),
            ),
            SafeArea(
              top: false,
              minimum: const EdgeInsets.only(bottom: 16),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    // Reset setting and apply button
                    Expanded(
                      child: OutlinedButton(
                        onPressed: controller.reset,
                        child: Text(S.of(context).resetSettings),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: Navigator.of(context).pop,
                        child: Text(S.of(context).apply),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

extension _String on String? {
  String? get effectiveValue => this ?? _defaultValue;
}

class ImageGenerateOptionController
    extends ValueNotifier<ImageGenerateOptionPayload> {
  ImageGenerateOptionController({ImageGenerateOptionPayload? value})
      : super(value ?? const ImageGenerateOptionPayload());

  // set value(ImageGenerateOptionPayload value) => super.value = value;
  // ImageGenerateOptionPayload get value => super.value;

  void reset() {
    value = const ImageGenerateOptionPayload();
  }

  void setStyle(String? style) {
    value = value.copyWith(style: style);
  }

  void setMedium(String? medium) {
    value = value.copyWith(medium: medium);
  }

  void setArtist(String? artist) {
    value = value.copyWith(artist: artist);
  }

  void setMood(String? mood) {
    value = value.copyWith(mood: mood);
  }

  void setDetail(String? detail) {
    value = value.copyWith(detail: detail);
  }

  void setNumberOfImages(int numberOfImages) {
    value = value.copyWith(numberOfImages: numberOfImages);
  }
}
