import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/image_galery.dart';
import '../image_generate_screen.dart';

const _heroTag = 'image_generate';

class ImageItem extends StatefulWidget {
  const ImageItem({
    Key? key,
    this.onTap,
    required this.imageUrl,
  }) : super(key: key);

  final Function()? onTap;
  final String imageUrl;

  @override
  State<ImageItem> createState() => _ImageItemState();
}

class _ImageItemState extends State<ImageItem> {
  void onTapImage({
    required int index,
    required List<String> images,
  }) {
    Navigator.of(context).push(
      FFTransparentPageRoute(
        pageBuilder: (context, _, ___) => ImageGallery(
          images: images,
          index: index,
          heroTagPrefix: _heroTag,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onTap: () => widget.onTap?.call(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: ExtendedImage.network(
              widget.imageUrl,
              fit: BoxFit.contain,
              cacheWidth: 1024,
            ),
          ),
        ),
      ],
    );
  }
}
