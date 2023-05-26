import 'package:flutter/material.dart';
import 'package:flutter_day1/util/app_layout.dart';
import 'package:flutter_day1/util/appstyle.dart';
import 'package:flutter_day1/widget/icon_text.dart';
import 'package:flutter_day1/widget/tab_view.dart';
import 'package:gap/gap.dart';

import 'left_right_title.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(16),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            'What are\nyou looking for?',
            style: Styles.headLineStyle
                .copyWith(fontSize: AppLayout.getHeight(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          TabView(firstTab: "Antirline tickets", secondTab: "Hotels"),
          //departure
          Gap(AppLayout.getHeight(20)),
          const IconText(
              text: "Departure", iconData: Icons.flight_takeoff_rounded),
          //arrival
          Gap(AppLayout.getHeight(16)),
          const IconText(text: "Arrival", iconData: Icons.flight_land_rounded),

          //find tickets
          Gap(AppLayout.getHeight(20)),
          InkWell(
            onTap: () {
              debugPrint(" submit find tickets");
            },
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              decoration: BoxDecoration(
                color: const Color(0xd91130ce),
                borderRadius:
                    BorderRadius.all(Radius.circular(AppLayout.getWidth(16))),
              ),
              child: const Text(
                "Find tickets",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          //upcoming tickets
          Gap(AppLayout.getHeight(16)),

          const LeftRightTitle(
              bigText: "Upcoming Flights", smallText: "View all"),
          const Gap(
            16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //first child
              Container(
                width: AppLayout.getSize(context).width * 0.42,
                height: AppLayout.getHeight(380),
                padding: EdgeInsets.all(AppLayout.getWidth(10)),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          spreadRadius: 2,
                          blurRadius: 2)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(AppLayout.getWidth(21)))),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(AppLayout.getHeight(12))),
                        image: const DecorationImage(
                            image: AssetImage("images/icon.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const Gap(12),
                    Text(
                      "20% discount on the earlu booking of this flight.Don't miss out this chance",
                      style: Styles.headLineSmallStyle,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  //second child
                  Stack(
                    children: [
                      Container(
                        width: AppLayout.getSize(context).width * 0.44,
                        height: AppLayout.getHeight(160),
                        padding: EdgeInsets.all(AppLayout.getWidth(10)),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade200,
                                  spreadRadius: 2,
                                  blurRadius: 2)
                            ],
                            color: const Color(0xff3ab8b8),
                            borderRadius: BorderRadius.all(
                                Radius.circular(AppLayout.getWidth(21)))),
                        child: Column(
                          children: [
                            Text(
                              "Discount for survey",
                              style: Styles.headLineSmallStyle
                                  .copyWith(color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(16)),
                            Text(
                              "Take the survey about our servives and get a discount",
                              style: Styles.headLineSmallStyle2
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -45,
                        child: Container(
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18,
                                  color:
                                      const Color.fromARGB(255, 12, 101, 101))),
                        ),
                      ),
                    ],
                  ),
                  const Gap(16),
                  //third child
                  Container(
                    width: AppLayout.getSize(context).width * 0.44,
                    height: AppLayout.getHeight(204),
                    padding: EdgeInsets.all(AppLayout.getWidth(10)),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              spreadRadius: 2,
                              blurRadius: 2)
                        ],
                        color: Styles.orangeColor,
                        borderRadius: BorderRadius.all(
                            Radius.circular(AppLayout.getWidth(21)))),
                    child: Column(
                      children: [
                        Text(
                          "Take love",
                          style: Styles.headLineSmallStyle
                              .copyWith(color: Colors.white),
                        ),
                        Gap(16),
                        RichText(
                            text: const TextSpan(
                          children: [
                            TextSpan(
                                text: '😍', style: TextStyle(fontSize: 30)),
                            TextSpan(
                                text: '🥰', style: TextStyle(fontSize: 40)),
                            TextSpan(
                                text: '😜', style: TextStyle(fontSize: 30)),
                          ],
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
//😀 😃 😄 😁 😆 😅 😂 🤣 🥲 🥹 ☺️ 😊 😇 🙂 🙃 😉 😌 😍 🥰 😘 😗 😙 😚 😋 😛 😝 😜 🤪 🤨 🧐 🤓 😎 🥸 🤩 🥳 😏 😒 😞 😔 😟 😕 🙁 ☹️ 😣 😖 😫 😩 🥺 😢 😭 😮‍💨 😤 😠 😡 🤬 🤯 😳 🥵 🥶 😱 😨 😰 😥 😓 🫣 🤗 🫡 🤔 🫢 🤭 🤫 🤥 😶 😶‍🌫️ 😐 😑 😬 🫨 🫠 🙄 😯 😦 😧 😮 😲 🥱 😴 🤤 😪 😵 😵‍💫 🫥 🤐 🥴 🤢 🤮 🤧 😷 🤒 🤕 🤑 🤠 😈 👿 👹 👺 🤡 💩 👻 💀 ☠️ 👽 👾 🤖 🎃 😺 😸 😹 😻 😼 😽 🙀 😿 😾
