import 'package:flutter/material.dart';

import '../util/app_layout.dart';

class IconText extends StatelessWidget {
  final String text;
  final IconData iconData;

  const IconText({super.key, required this.text, required this.iconData});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getWidth(12)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.all(Radius.circular(AppLayout.getWidth(16))),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, spreadRadius: 5, blurRadius: 5)
          ]),
      child: Row(
        children: [
           Icon(iconData, color: Color(0xffbfc2df)),
          Container(
            margin: EdgeInsets.only(left: AppLayout.getWidth(4)),
            child: InkWell(
              child:  Text(text),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
