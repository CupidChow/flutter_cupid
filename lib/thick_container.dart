import 'package:flutter/material.dart';
import 'package:flutter_day1/util/app_layout.dart';

class ThickDotContainer extends StatelessWidget {
  final Color? colore;

  const ThickDotContainer({super.key, this.colore});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: colore ?? Colors.white, width: 2),
      ),
    );
  }
}

class GapLineView extends StatelessWidget {
  final Color? lineColor;
  final int? gapLength;

  const GapLineView({super.key, this.lineColor, this.gapLength});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: List.generate(
            (constraints.constrainWidth() / 6).floor(),
            (index) => SizedBox(
                  width: 3,
                  height: 1,
                  child: DecoratedBox(
                      decoration:
                          BoxDecoration(color: lineColor ?? Colors.white)),
                )),
      );
    });
  }
}

class ThickCircleDotView extends StatelessWidget {
  final Color? dotColor;
  const ThickCircleDotView({super.key, this.dotColor});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
              border: Border.all(color: dotColor ?? Colors.black, width: 2),
              color: Colors.transparent,
              borderRadius:
                  BorderRadius.all(Radius.circular(AppLayout.getWidth(50)))),
        ),
        Positioned(
            left: 4,
            top: 4,
            child: Container(
              alignment: Alignment.center,
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  color: dotColor ?? Colors.black,
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppLayout.getWidth(50)))),
            ))
      ],
    );
  }
}
