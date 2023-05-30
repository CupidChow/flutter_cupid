import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import '../../util/app_layout.dart';
import '../../util/appstyle.dart';

class HorizontalIconTextView extends StatelessWidget {
  final IconData icons;
  final String text;
  final Color? colors;
  final TextStyle? styles;
  final double? size;
  const HorizontalIconTextView(
      {super.key, required this.icons, required this.text, this.colors,this.styles,this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icons,
          size: size??AppLayout.getWidth(16),
          color: colors ?? Colors.black,
        ),
        Gap(AppLayout.getWidth(2)),
        Text(
          text,
          style: styles?? Styles.headLineSmallStyle2,
        )
      ],
    );
  }
}
