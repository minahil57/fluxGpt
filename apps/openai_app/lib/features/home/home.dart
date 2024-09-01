import 'package:flutter/material.dart';

import '../../common/constant/route_list.dart';
import '../../generated/l10n.dart';
import 'widgets/card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardWidget(
              title: S.of(context).chatWithBot,
              onTap: () {
                Navigator.of(context).pushNamed(RouteList.chatGPT);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CardWidget(
              title: S.of(context).imageGenerate,
              onTap: () {
                Navigator.of(context).pushNamed(RouteList.imageGenerate);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CardWidget(
              title: S.of(context).textGenerate,
              onTap: () {
                Navigator.of(context).pushNamed(RouteList.textGenerate);
              },
            )
          ],
        ),
      ),
    );
  }
}
