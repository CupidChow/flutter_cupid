import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day1/thick_container.dart';
import 'package:gap/gap.dart';

import '../util/appstyle.dart';

class TicketDestinationCodeView extends StatelessWidget {
  final String fromCode;
  final String toCode;
  final Color? mainColor;
  final Color? iconColor;
  const TicketDestinationCodeView(
      {super.key, required this.fromCode, required this.toCode,this.iconColor,this.mainColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          fromCode,
          style: Styles.headLineSmallStyle.copyWith(color: mainColor??Colors.white),
        ),
        const Spacer(),
         ThickDotContainer(colore:iconColor),
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              GapLineView(lineColor: iconColor,),
          
               Icon(
                FluentSystemIcons.ic_fluent_airplane_filled,
                color:iconColor??Colors.white,
              ),
            ],
          ),
        ),
         ThickDotContainer(colore:iconColor),
        const Spacer(),
        Text(
          toCode,
          textAlign: TextAlign.end,
          style: Styles.headLineSmallStyle.copyWith(color:mainColor?? Colors.white),
        ),
      ],
    );
  }
}

class TicketDestinationNameView extends StatelessWidget {
  final String fromName;
  final String toName;
  final String duration;
    final Color? middleColor;
  final Color? sideColor;
  const TicketDestinationNameView(
      {super.key,
      required this.fromName,
      required this.toName,
      required this.duration,this.middleColor,this.sideColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Text(
            fromName,
            style: Styles.headLineSmallStyle2.copyWith(color: sideColor??Colors.white),
          ),
        ),
        Text(
          duration,
          style: Styles.headLineSmallStyle2.copyWith(color:middleColor?? Colors.white),
        ),
        SizedBox(
          child: Text(
            toName,
            textAlign: TextAlign.end,
            style: Styles.headLineSmallStyle2.copyWith(color: sideColor??Colors.white),
          ),
        )
      ],
    );
  }
}

class TicketDateView extends StatelessWidget {
  final String leftValue;
  final String? middleValue;
  final String rightValue;
  final String leftKey;
  final String rightKey;
  final String? middleKey;
  final Color? mainColor;
  final Color? subColor;

  const TicketDateView(
      {super.key,
      required this.leftValue,
      this.middleValue,
      required this.rightValue,
      required this.leftKey,
      required this.rightKey,
      this.middleKey,
      this.mainColor,
      this.subColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //line4
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              leftValue,
              style: Styles.headLineSmallStyle2
                  .copyWith(color: mainColor ?? Colors.white),
            ),
            const Gap(5),
            Text(
              leftKey,
              style: Styles.headLineSmallStyle2
                  .copyWith(color: subColor ?? Colors.white),
            ),
          ],
        ),
        //line5
        //
        if (middleKey != null)
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                middleValue!,
                style: Styles.headLineSmallStyle2
                    .copyWith(color: mainColor ?? Colors.white),
              ),
              const Gap(5),
              Text(
                middleKey!,
                style: Styles.headLineSmallStyle2
                    .copyWith(color: subColor ?? Colors.white),
              ),
            ],
          ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              rightValue,
              style: Styles.headLineSmallStyle2
                  .copyWith(color: mainColor ?? Colors.white),
            ),
            const Gap(5),
            Text(
              rightKey,
              style: Styles.headLineSmallStyle2
                  .copyWith(color: subColor ?? Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
