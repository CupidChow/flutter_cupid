import 'package:flutter/material.dart';
import 'package:flutter_day1/delivery/widget/icon_text.dart';
import 'package:flutter_day1/util/app_layout.dart';
import 'package:flutter_day1/util/appstyle.dart';
import 'package:gap/gap.dart';

class PopularBottomItemView extends StatelessWidget {
  const PopularBottomItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppLayout.getHeight(120),
      margin: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8)),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: AppLayout.getHeight(120),
            width: AppLayout.getWidth(120),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(AppLayout.getWidth(16))),image: DecorationImage(image: AssetImage("images/icon.png"))),
          ),
          Expanded(
            child: Container(
              height: AppLayout.getHeight(100),
              padding: EdgeInsets.all(AppLayout.getWidth(12)),
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(AppLayout.getWidth(16)),bottomRight: Radius.circular(AppLayout.getWidth(16)))),
              // child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Text("Nutritious fruit meal ideal food",style: Styles.headLineMediaStyle.copyWith(color: Colors.black,overflow: TextOverflow.ellipsis)),
                    Gap(AppLayout.getHeight(8)),
                    Text("Nutritious fruit meal ideal food",style: Styles.headLineSmallStyle2.copyWith(overflow: TextOverflow.ellipsis)),
                    Gap(AppLayout.getHeight(8)),
                    const Row(
                          children: [
                            HorizontalIconTextView(
                              text: "Normal",
                              icons: Icons.description,
                              colors: Colors.orange,
                            ),
                            HorizontalIconTextView(
                              text: "1.7km",
                              icons: Icons.location_on_sharp,
                              colors: Colors.greenAccent,
                            ),
                            HorizontalIconTextView(
                              text: "32min",
                              icons: Icons.timer,
                              colors: Colors.redAccent,
                            ),
                          ],
                        ),
                  ],
                ),
              ),
          ),
          // ),
    
        ],
      ),
    );
  }
}