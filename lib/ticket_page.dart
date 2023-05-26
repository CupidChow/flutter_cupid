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
      body: Stack(
        children: [
          ListView(
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
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppLayout.getHeight(16))),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 5,
                        spreadRadius: 5)
                  ],
                ),
                child: Column(
                  children: [
                    TicketDestinationCodeView(
                      fromCode: "NYU",
                      toCode: "LDN",
                      mainColor: Styles.textColor,
                      iconColor: Colors.blueAccent,
                    ),
                    Gap(AppLayout.getHeight(12)),
                    const TicketDestinationNameView(
                      fromName: "New-York",
                      toName: "London",
                      duration: "8H 30M",
                      middleColor: Colors.black,
                      sideColor: Colors.grey,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const GapLineView(
                      lineColor: Colors.grey,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const TicketDateView(
                      leftValue: "1 May",
                      rightValue: "23",
                      leftKey: 'Date',
                      rightKey: 'Number',
                      middleKey: "Departure time",
                      middleValue: "08:00 AM",
                      mainColor: Colors.black,
                      subColor: Colors.grey,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    GapLineView(
                      lineColor: Colors.grey,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const TicketDateView(
                      leftValue: "Flutter DB",
                      rightValue: "5234 2334 1245",
                      leftKey: 'Passenger',
                      rightKey: 'Passport',
                      mainColor: Colors.black,
                      subColor: Colors.grey,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const GapLineView(
                      lineColor: Colors.grey,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const TicketDateView(
                      leftValue: "0500 23445",
                      rightValue: "B2465656",
                      leftKey: 'Number of E-ticket',
                      rightKey: 'Booking code',
                      mainColor: Colors.black,
                      subColor: Colors.grey,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const GapLineView(
                      lineColor: Colors.grey,
                    ),
                    Gap(AppLayout.getHeight(20)),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            child: ThickCircleDotView(),
            top: AppLayout.getHeight(200),
            left: AppLayout.getWidth(8),
          ),
          Positioned(
            child: ThickCircleDotView(),
            top: AppLayout.getHeight(200),
            right: AppLayout.getWidth(8),
          ),
        ],
      ),
    );
  }
}
