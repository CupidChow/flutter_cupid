import 'package:flutter/material.dart';
import 'package:flutter_day1/thick_container.dart';
import 'package:flutter_day1/util/app_layout.dart';
import 'package:flutter_day1/util/appstyle.dart';
import 'package:flutter_day1/widget/tab_view.dart';
import 'package:flutter_day1/widget/ticket_destination.dart';
import 'package:gap/gap.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.all(AppLayout.getWidth(16)),
        children: [
          Gap(AppLayout.getHeight(40)),
          //标题
          Text(
            "Tickets",
            style: Styles.headLineStyle
                .copyWith(fontSize: AppLayout.getHeight(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          const TabView(firstTab: "Upcoming", secondTab: "Previous"),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.all(AppLayout.getHeight(12)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.all(Radius.circular(AppLayout.getHeight(16))),
              boxShadow: [BoxShadow(
                color: Colors.grey.shade200,blurRadius: 5,spreadRadius: 5
              )],
            ),
            child: Column(
              children: [
                  TicketDestinationCodeView(fromCode: "NYU", toCode: "LDN",mainColor: Styles.textColor,iconColor: Colors.blueAccent,),
                  Gap(AppLayout.getHeight(12)),
                const  TicketDestinationNameView(fromName: "New-York", toName: "London", duration: "8H 30M",middleColor: Colors.black,sideColor: Colors.grey,),
                ThickCircleDotView(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
