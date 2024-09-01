import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MenuAnimation {
  MenuAnimation({
    required this.effects,
    this.applyInitialState = true,
  });
  final List<Effect<dynamic>> effects;
  final bool applyInitialState;
  late Adapter adapter;
  late AnimationController controller;
}

void setupAnimations(Iterable<MenuAnimation> animations, TickerProvider vsync) {
  for (var animation in animations) {
    final newController = AnimationController(vsync: vsync);
    animation.controller = newController;
    animation.adapter = Adapter()..init(newController);
  }
}

extension AnimatedWidgetExtension on Widget {
  Widget animateOnTap(
    MenuAnimation animate, {
    bool hasBeenTriggered = false,
  }) =>
      hasBeenTriggered || animate.applyInitialState
          ? Animate(
              controller: animate.controller,
              adapter: animate.adapter,
              effects: animate.effects,
              child: this)
          : this;
}
