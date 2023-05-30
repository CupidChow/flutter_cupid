import 'package:flutter/material.dart';
import 'package:flutter_day1/util/appstyle.dart';

class ExpandableText extends StatefulWidget {
  final String text;

  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;
  bool hide = true;
  double limitHeight = 100.0; //hide if higher

  @override
  void initState() {
    super.initState();
    if (widget.text.length > limitHeight) {
      firstHalf = widget.text.substring(0, limitHeight.toInt());
      secondHalf =
          widget.text.substring(limitHeight.toInt() , widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? Text(firstHalf)
          : Column(
              children: [
                Text(hide ? "$firstHalf..." : "$firstHalf$secondHalf"),
                InkWell(
                  onTap: () {
                    setState(() {
                      hide = !hide;
                    });
                  },
                  child: Row(
                    children: [
                      Text(
                        hide ? "Show more" : "Show less",
                        style: Styles.headLineSmallStyle2
                            .copyWith(color: Colors.greenAccent),
                      ),
                      Icon(
                        hide?Icons.arrow_drop_down:Icons.arrow_drop_up,
                        color: Colors.greenAccent,
                        
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
