import 'package:flutter/material.dart';

import '../util/appstyle.dart';

class LeftRightTitle extends StatefulWidget {
  final String bigText;
  final String smallText;

  const LeftRightTitle({super.key, required this.bigText, required this.smallText});


  @override
  State<LeftRightTitle> createState() => _LeftRightTitleState();
}

class _LeftRightTitleState extends State<LeftRightTitle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
         widget.bigText,
          style: Styles.headLineMediaStyle,
        ),
        InkWell(
          child: Text(
            widget.smallText,
            style:
                Styles.headLineSmallStyle2.copyWith(color: Styles.primaryColor),
          ),
          onTap: () {
            // _onClickViewMore();
          },
        )
      ],
    );
  }
}
