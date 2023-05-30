import 'package:flutter/material.dart';
import 'package:flutter_day1/util/app_layout.dart';
import 'package:flutter_day1/util/appstyle.dart';
import 'package:gap/gap.dart';

import '../widget/expandable_text.dart';
import '../widget/icon_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          Positioned(
            height: AppLayout.getHeight(350),
            width: AppLayout.getScreenWidth(),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/icon.png"), fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            top: AppLayout.getHeight(54),
            left: AppLayout.getWidth(16),
            right: AppLayout.getWidth(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: AppLayout.getWidth(30),
                    height: AppLayout.getHeight(30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                            Radius.circular(AppLayout.getHeight(30)))),
                    child: Icon(
                      Icons.arrow_back,
                      size: AppLayout.getWidth(16),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: AppLayout.getWidth(30),
                    height: AppLayout.getHeight(30),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                            Radius.circular(AppLayout.getHeight(30)))),
                    child: Icon(
                      Icons.shopping_cart,
                      size: AppLayout.getWidth(16),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned.fill(
            left: 0,
            right: 0,
            top: AppLayout.getHeight(300),
            child: Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(16),right: AppLayout.getHeight(16),top: AppLayout.getHeight(16),bottom: AppLayout.getHeight(50)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getWidth(16)),
                      topRight: Radius.circular(AppLayout.getWidth(16)))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Biriani",
                    style: Styles.headLineMediaStyle,
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                            5,
                            (index) => Container(
                                  child: Icon(
                                    Icons.star,
                                    size: AppLayout.getWidth(15),
                                    color: Styles.orangeColor,
                                  ),
                                )),
                      ),
                      Gap(AppLayout.getWidth(10)),
                      Text(
                        "4.5",
                        style: Styles.headLineSmallStyle2,
                      ),
                      Gap(AppLayout.getWidth(10)),
                      Text(
                        "1234 comments",
                        style: Styles.headLineSmallStyle2,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(16)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Gap(AppLayout.getHeight(20)),
                  Text(
                    "Introduce",
                    style: Styles.headLineMediaStyle,
                  ),
                  Gap(AppLayout.getHeight(20)),
                 const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableText(
                          text:
                              "Chicken marinated in a spiced yoghurts is placed in a large pot, then layered with firend onions (cheeky easy sub below fresh coriander/cilantro then oar bolied how are you doing what are you doing how are you today,),Chicken marinated in a spiced yoghurts is placed in a large pot, then layered with firend onions (cheeky easy sub below fresh coriander/cilantro then oar bolied how are you doing what are you doing how are you today,),Chicken marinated in a spiced yoghurts is placed in a large pot, then layered with firend onions (cheeky easy sub below fresh coriander/cilantro then oar bolied how are you doing what are you doing how are you today,),Chicken marinated in a spiced yoghurts is placed in a large pot, then layered with firend onions (cheeky easy sub below fresh coriander/cilantro then oar bolied how are you doing what are you doing how are you today,)"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: AppLayout.getWidth(16),
                top: AppLayout.getHeight(12),
                right: AppLayout.getWidth(16),
                bottom: AppLayout.getWidth(4),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(24)),
                    topRight: Radius.circular(AppLayout.getHeight(24)),
                  ),
                  color: Colors.grey.shade200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(16)),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                          Radius.circular(AppLayout.getHeight(16))),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            debugPrint("click -------");
                          },
                          child: Text("➖", style: Styles.headLineSmallStyle2),
                        ),
                        Gap(4),
                        Text(
                          "0",
                          style: Styles.headLineSmallStyle
                              .copyWith(color: Colors.black),
                        ),
                        Gap(4),
                        InkWell(
                          onTap: () {
                            debugPrint(
                              "click ++++++",
                            );
                          },
                          child: Text("➕", style: Styles.headLineSmallStyle2),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(AppLayout.getHeight(16)),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.all(
                            Radius.circular(AppLayout.getHeight(16))),
                      ),
                      child: Text(
                        "\$0.06 Add to cart",
                        style: Styles.headLineSmallStyle
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
