import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../config/app_config.dart';
import '../../config/tab_bar_config.dart';
import '../tabbar_icon.dart';
import 'menu_animations.dart';

class TabMinimize extends StatefulWidget {
  final List<TabBarMenuConfig> tabData;
  final int totalCart;
  final int selectedIndex;
  final TabBarConfig tabBarConfig;
  final Function(int) onTap;

  const TabMinimize({
    Key? key,
    required this.tabData,
    required this.totalCart,
    required this.selectedIndex,
    required this.tabBarConfig,
    required this.onTap,
  }) : super(key: key);

  @override
  State<TabMinimize> createState() => _TabMinimizeState();
}

class _TabMinimizeState extends State<TabMinimize>
    with TickerProviderStateMixin {
  var _openTabMenu = false;

  var animationsMap = {
    'container': MenuAnimation(
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 500.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'iconFly': MenuAnimation(
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0, 0),
          end: const Offset(0, -30),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: 1,
          end: 1.5,
        )
      ],
    ),
    'iconClosed': MenuAnimation(
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();

    for (var i = 0; i < widget.tabData.length; i++) {
      animationsMap[i.toString()] = MenuAnimation(
        applyInitialState: true,
        effects: [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: Duration(milliseconds: i * 100),
            duration: 400.ms,
            begin: const Offset(-20, 0),
            end: const Offset(0, 0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.ms,
            duration: 600.ms,
            begin: 0,
            end: 1,
          ),
        ],
      );
    }

    setupAnimations(
      animationsMap.values.where((anim) => true),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  void onAnimate() {
    if (_openTabMenu) {
      for (var i = 0; i < widget.tabData.length; i++) {
        if (animationsMap[i.toString()] != null) {
          unawaited(animationsMap[i.toString()]!.controller.reverse());
        }
      }
      if (animationsMap['container'] != null) {
        unawaited(animationsMap['container']!.controller.reverse());
      }
      if (animationsMap['iconFly'] != null) {
        unawaited(animationsMap['iconFly']!.controller.reverse());
      }
      if (animationsMap['iconClosed'] != null) {
        unawaited(animationsMap['iconClosed']!.controller.reverse());
      }
      setState(() {
        _openTabMenu = false;
      });
    } else {
      for (var i = 0; i < widget.tabData.length; i++) {
        if (animationsMap[i.toString()] != null) {
          unawaited(animationsMap[i.toString()]!.controller.forward(from: 0.0));
        }
      }

      if (animationsMap['container'] != null) {
        unawaited(animationsMap['container']!.controller.forward(from: 0.0));
      }
      if (animationsMap['iconFly'] != null) {
        unawaited(animationsMap['iconFly']!.controller.forward(from: 0.0));
      }
      if (animationsMap['iconClosed'] != null) {
        unawaited(animationsMap['iconClosed']!.controller.forward(from: 0.0));
      }
      setState(() {
        _openTabMenu = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var tabData = widget.tabData;

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 16, 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 200,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                // color: const Color(0xFF272C35),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 40.0,
                    offset: const Offset(0, 0),
                  )
                ]),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  for (var i = 0; i < tabData.length; i++)
                    tabData[i].visible == false ||
                            tabData[i].groupLayout == true
                        ? const SizedBox()
                        : InkWell(
                            onTap: () {
                              widget.onTap(i);
                              onAnimate();
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 15,
                              ),
                              child: TabBarIcon(
                                key: Key('TabBarIcon-$i'),
                                item: tabData[i],
                                totalCart: widget.totalCart,
                                isActive: i == widget.selectedIndex,
                                isEmptySpace: false,
                                config: widget.tabBarConfig,
                                isHorizontal: true,
                              ).animateOnTap(
                                animationsMap[i.toString()]!,
                              ),
                            ),
                          ),
                ],
              ),
            ),
          ).animateOnTap(
            animationsMap['container']!,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
            child: InkWell(
              onTap: onAnimate,
              child: ClipOval(
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).colorScheme.secondary,
                        Theme.of(context).colorScheme.primary,
                      ],
                      stops: const [0, 1],
                      begin: const AlignmentDirectional(0.87, -1),
                      end: const AlignmentDirectional(-0.87, 1),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    alignment: const AlignmentDirectional(0, 0),
                    children: [
                      const Icon(
                        CupertinoIcons.chevron_up,
                        color: Colors.white,
                        size: 22,
                      ).animateOnTap(
                        animationsMap['iconFly']!,
                      ),
                      const Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                        size: 24,
                      ).animateOnTap(
                        animationsMap['iconClosed']!,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
