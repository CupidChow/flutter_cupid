import 'package:flutter/material.dart';

import '../util/app_layout.dart';

class TabView extends StatelessWidget {
  final String firstTab;
  final String secondTab;

  const TabView({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: const Color(0xfff4f6fd)),
        child: Row(
          children: [
            //左边滑块
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.all(AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(50)))),
              child: InkWell(
                child: Center(
                  child: Text(firstTab),
                ),
                onTap: () {},
              ),
            ),
            // right tab
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.all(AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(50)))),
              child: InkWell(
                child: Center(
                  child: Text(secondTab),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
