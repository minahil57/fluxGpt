/// This class is customize from - https://github.com/fluttercandies/extended_image
import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:async_button_builder/async_button_builder.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../generated/l10n.dart';

class ImageGallery extends StatelessWidget {
  final List<String>? images;
  final int? index;
  final String? heroTagPrefix;

  const ImageGallery({
    super.key,
    this.images,
    this.index,
    this.heroTagPrefix,
  });

  @override
  Widget build(BuildContext context) {
    return PicSwiper(
      index,
      images!.map((image) => PicSwiperItem(image)).toList(),
      heroTagPrefix: heroTagPrefix,
    );
  }
}

class PicSwiperItem {
  String? picUrl;
  String des;

  PicSwiperItem(this.picUrl, {this.des = ''});
}

class PicSwiper extends StatefulWidget {
  final int? index;
  final List<PicSwiperItem> pics;
  final String? heroTagPrefix;

  const PicSwiper(
    this.index,
    this.pics, {
    super.key,
    this.heroTagPrefix,
  });

  @override
  State<PicSwiper> createState() => _PicSwiperState();
}

class _PicSwiperState extends State<PicSwiper>
    with SingleTickerProviderStateMixin {
  StreamController<int> rebuildIndex = StreamController<int>.broadcast();
  StreamController<bool> rebuildSwiper = StreamController<bool>.broadcast();
  AnimationController? _animationController;
  Animation<double>? _animation;
  VoidCallback? animationListener;

  List<double> doubleTapScales = <double>[1.0, 2.0];

  int? currentIndex;
  bool _showSwiper = true;

  @override
  void initState() {
    currentIndex = widget.index;
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    if (animationListener != null) {
      _animation?.removeListener(animationListener!);
    }
    rebuildIndex.close();
    rebuildSwiper.close();
    _animationController?.dispose();
    clearGestureDetailsCache();
    //cancelToken?.cancel();
    super.dispose();
  }

  Future<bool> _saveImage(String url) async {
    final uri = Uri.parse(url);
    final imageName = uri.pathSegments.last;

    final response = await get(uri);
    final bytes = response.bodyBytes;
    final Directory temp = await getTemporaryDirectory();
    final path = '${temp.path}/$imageName';
    final File imageFile = File(path);
    imageFile.writeAsBytesSync(bytes);

    final result = await ImageGallerySaver.saveFile(path);
    final isSuccess = result['isSuccess'] as bool;
    debugPrint(result.toString());
    return isSuccess;
  }

  Future<void> _shareImage(String url) async {
    final uri = Uri.parse(url);
    final imageName = uri.pathSegments.last;

    final response = await get(uri);
    final bytes = response.bodyBytes;
    final Directory temp = await getTemporaryDirectory();
    final path = '${temp.path}/$imageName';
    final File imageFile = File(path);
    imageFile.writeAsBytesSync(bytes);
    Share.shareXFiles([XFile(path)]);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      shadowColor: Colors.transparent,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ExtendedImageSlidePage(
            onSlidingPage: (state) {
              final showSwiper = !state.isSliding;
              if (showSwiper != _showSwiper) {
                _showSwiper = showSwiper;
                rebuildSwiper.add(_showSwiper);
              }
            },
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                ExtendedImageGesturePageView.builder(
                  preloadPagesCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    final thumbnailImage = widget.pics[index].picUrl!;
                    Widget image = ExtendedImage.network(
                      thumbnailImage,
                      fit: BoxFit.contain,
                      enableSlideOutPage: true,
                      mode: ExtendedImageMode.gesture,
                      loadStateChanged: (ExtendedImageState state) {
                        switch (state.extendedImageLoadState) {
                          case LoadState.loading:

                            /// Use thumbnail image has loaded as loading image
                            /// Waiting the larger image show
                            debugPrint(
                              'loading thumbnailImage: $thumbnailImage',
                            );
                            return ExtendedImage.network(thumbnailImage);
                          case LoadState.completed:
                            return state.completedWidget;
                          case LoadState.failed:
                            return ColoredBox(
                              color: Theme.of(context).colorScheme.background,
                              child: const Center(
                                child: Icon(Icons.error),
                              ),
                            );
                        }
                      },
                      initGestureConfigHandler: (state) {
                        double? initialScale = 1.0;

                        if (state.extendedImageInfo != null) {
                          initialScale = _initalScale(
                            size: Size(
                              constraints.maxWidth,
                              constraints.maxHeight,
                            ),
                            initialScale: initialScale,
                            imageSize: Size(
                              state.extendedImageInfo!.image.width.toDouble(),
                              state.extendedImageInfo!.image.height.toDouble(),
                            ),
                          );
                        }
                        return GestureConfig(
                          inPageView: true,
                          minScale: 1.0,
                          initialScale: initialScale!,
                          maxScale: max(initialScale, 5.0),
                          animationMaxScale: max(initialScale, 5.0),
                        );
                      },
                      onDoubleTap: (ExtendedImageGestureState state) {
                        final pointerDownPosition = state.pointerDownPosition;
                        final begin = state.gestureDetails!.totalScale;
                        double end;

                        //remove old
                        _animation?.removeListener(
                          animationListener as void Function(),
                        );

                        //stop pre
                        _animationController!.stop();

                        //reset to use
                        _animationController!.reset();

                        if (begin == doubleTapScales[0]) {
                          end = doubleTapScales[1];
                        } else {
                          end = doubleTapScales[0];
                        }

                        animationListener = () {
                          //print(_animation.value);
                          state.handleDoubleTap(
                            scale: _animation!.value,
                            doubleTapPosition: pointerDownPosition,
                          );
                        };
                        _animation = _animationController!
                            .drive(Tween<double>(begin: begin, end: end));

                        _animation!.addListener(
                          animationListener as void Function(),
                        );

                        _animationController!.forward();
                      },
                    );

                    if (widget.heroTagPrefix != null) {
                      image = Hero(
                        tag: '${widget.heroTagPrefix}$thumbnailImage',
                        child: image,
                      );
                    }
                    return image;
                  },
                  itemCount: widget.pics.length,
                  onPageChanged: (int index) {
                    currentIndex = index;
                    rebuildIndex.add(index);
                  },
                  controller: ExtendedPageController(
                    initialPage: currentIndex!,
                  ),
                  //physics: ClampingScrollPhysics(),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: StreamBuilder<bool>(
                    builder: (c, d) {
                      if (d.data == null || !d.data!) return const SizedBox();

                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ActionButton(
                                action: () => _shareImage(
                                    widget.pics[currentIndex ?? 0].picUrl!),
                                widget: Chip(
                                  label: Row(
                                    children: [
                                      const Icon(CupertinoIcons
                                          .arrowshape_turn_up_right),
                                      const SizedBox(width: 4),
                                      Text(S.of(context).share),
                                    ],
                                  ),
                                ),
                              ),
                              ActionButton(
                                action: () => _saveImage(
                                    widget.pics[currentIndex ?? 0].picUrl!),
                                widget: Chip(
                                  label: Row(
                                    children: [
                                      const Icon(CupertinoIcons.cloud_download),
                                      const SizedBox(width: 4),
                                      Text(S.of(context).download),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          MySwiperPlugin(
                            widget.pics,
                            currentIndex,
                            rebuildIndex,
                          ),
                        ],
                      );
                    },
                    initialData: true,
                    stream: rebuildSwiper.stream,
                  ),
                ),
                Positioned(
                  top: 36,
                  right: 12,
                  child: StreamBuilder<Object>(
                    stream: rebuildIndex.stream,
                    initialData: currentIndex ?? 0,
                    builder: (context, snapshot) {
                      return IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop(snapshot.data);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  double? _initalScale({
    required Size imageSize,
    required Size size,
    double? initialScale,
  }) {
    final n1 = imageSize.height / imageSize.width;
    final n2 = size.height / size.width;
    if (n1 > n2) {
      final fittedSizes = applyBoxFit(BoxFit.contain, imageSize, size);
      //final Size sourceSize = fittedSizes.source;
      final destinationSize = fittedSizes.destination;
      return size.width / destinationSize.width;
    } else if (n1 / n2 < 1 / 4) {
      final fittedSizes = applyBoxFit(BoxFit.contain, imageSize, size);
      //final Size sourceSize = fittedSizes.source;
      final destinationSize = fittedSizes.destination;
      return size.height / destinationSize.height;
    }

    return initialScale;
  }
}

class MySwiperPlugin extends StatelessWidget {
  final List<PicSwiperItem> pics;
  final int? index;
  final StreamController<int> reBuild;

  const MySwiperPlugin(this.pics, this.index, this.reBuild, {super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      builder: (BuildContext context, data) {
        return DefaultTextStyle(
          style: const TextStyle(color: Colors.white),
          child: Container(
            height: 50.0,
            width: double.infinity,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 10.0,
                ),
                Text(
                  '${data.data! + 1}',
                ),
                Text(
                  ' / ${pics.length}',
                ),
                Text(
                  pics[data.data!].des,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 10.0,
                ),
              ],
            ),
          ),
        );
      },
      initialData: index,
      stream: reBuild.stream,
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.widget,
    required this.action,
  });

  final Widget widget;
  final Future<void> Function() action;

  @override
  Widget build(BuildContext context) {
    return AsyncButtonBuilder(
      loadingWidget: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 16.0,
          width: 16.0,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              Theme.of(context).iconTheme.color!,
            ),
          ),
        ),
      ),
      successWidget: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(Icons.check),
      ),
      onPressed: () async {
        await action.call();
      },
      loadingSwitchInCurve: Curves.bounceInOut,
      loadingTransitionBuilder: (child, animation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 1.0),
            end: const Offset(0, 0),
          ).animate(animation),
          child: child,
        );
      },
      builder: (context, child, callback, state) {
        return Material(
          color: state.maybeWhen(
            success: () => Colors.transparent,
            orElse: () => Colors.transparent,
          ),
          // This prevents the loading indicator showing below the
          // button
          clipBehavior: Clip.hardEdge,
          // shape: const StadiumBorder(),
          child: GestureDetector(
            onTap: callback,
            child: child,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: widget,
      ),
    );
  }
}
