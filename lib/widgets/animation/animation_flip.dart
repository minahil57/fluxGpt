import 'dart:math';

import 'package:flutter/material.dart';

// Ref: https://medium.com/flutter-community/flutter-flip-card-animation-eb25c403f371

class AnimationFlip extends StatefulWidget {
  const AnimationFlip({
    Key? key,
    required this.frontWidget,
    required this.rearWidget,
    this.showFront = true,
    this.axis = Axis.vertical,
    this.duration = const Duration(milliseconds: 300),
  }) : super(key: key);

  final Widget frontWidget;
  final Widget rearWidget;
  final bool showFront;
  final Axis axis;
  final Duration duration;

  @override
  State<AnimationFlip> createState() => _AnimationFlipState();
}

class _AnimationFlipState extends State<AnimationFlip> {
  late bool _showFrontSide;
  late bool _flipXAxis;

  @override
  void initState() {
    super.initState();
    _showFrontSide = widget.showFront;
    _flipXAxis = widget.axis == Axis.vertical;
  }

  @override
  void didUpdateWidget(covariant AnimationFlip oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.showFront != widget.showFront) {
      _showFrontSide = widget.showFront;
    }
    if (oldWidget.axis != widget.axis) {
      _flipXAxis = widget.axis == Axis.vertical;
    }
  }

  @override
  Widget build(BuildContext context) {
    return _buildFlipAnimation();
  }

  // void _changeRotationAxis() {
  //   setState(() {
  //     _flipXAxis = !_flipXAxis;
  //   });
  // }
  //
  // void _switchCard() {
  //   setState(() {
  //     _showFrontSide = !_showFrontSide;
  //   });
  // }

  Widget _buildFlipAnimation() {
    return AnimatedSwitcher(
      duration: widget.duration,
      transitionBuilder: __transitionBuilder,
      layoutBuilder: (widget, list) =>
          Stack(children: [if (widget != null) widget, ...list]),
      switchInCurve: Curves.easeInOutSine,
      switchOutCurve: Curves.easeInOutSine.flipped,
      child: _showFrontSide ? _buildFront() : _buildRear(),
    );
  }

  Widget __transitionBuilder(Widget widget, Animation<double> animation) {
    final rotateAnim = Tween(begin: pi, end: 0.0).animate(animation);
    return AnimatedBuilder(
      animation: rotateAnim,
      child: widget,
      builder: (context, widget) {
        final isUnder = (ValueKey(_showFrontSide) != widget?.key);
        var tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
        tilt *= isUnder ? -1.0 : 1.0;
        final value =
            isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value;
        return Transform(
          transform: _flipXAxis
              ? (Matrix4.rotationY(value)..setEntry(3, 0, tilt))
              : (Matrix4.rotationX(value)..setEntry(3, 1, tilt)),
          alignment: Alignment.center,
          child: widget,
        );
      },
    );
  }

  Widget _buildFront() {
    return __buildLayout(
      key: const ValueKey(true),
      child: widget.frontWidget,
    );
  }

  Widget _buildRear() {
    return __buildLayout(
      key: const ValueKey(false),
      child: widget.rearWidget,
    );
  }

  Widget __buildLayout({
    required Key key,
    required Widget child,
  }) {
    return SizedBox(
      key: key,
      child: child,
    );
  }
}
