import 'package:flutter/material.dart';
import 'package:flutter_day1/util/app_layout.dart';
import 'package:flutter_day1/util/appstyle.dart';
import 'package:flutter_day1/widget/ticket_destination.dart';
import 'package:gap/gap.dart';

class TicketCardView extends StatelessWidget {
  final Map<String, dynamic> tickets;

  const TicketCardView({super.key, required this.tickets});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
        width: size.width * 0.85,
        height: AppLayout.getHeight(200),
        child: Container(
          margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
          child: Column(
            children: [
              // 目的地
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xff526799),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(21),
                        topLeft: Radius.circular(21))),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    TicketDestinationCodeView(
                        fromCode: tickets['from']['code'],
                        toCode: tickets['to']['code']),
                    // 目的地2
                    const Gap(3),
                    TicketDestinationNameView(
                      fromName: tickets['from']['name'],
                      toName: tickets['to']['name'],
                      duration: tickets['duration'],
                    ),
                  ],
                ),
              ),
              Container(
                //第三行
                padding: const EdgeInsets.only(top: 1, bottom: 1),
                color: Styles.orangeColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 10,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                    ),
                    Expanded(
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 6).floor(),
                              (index) => const SizedBox(
                                    width: 3,
                                    height: 1,
                                    child: DecoratedBox(
                                        decoration:
                                            BoxDecoration(color: Colors.white)),
                                  )),
                        );
                      }),
                    ),
                    Container(
                      width: 10,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                      ),
                    ),
                  ],
                ),
              ),
              //line forth fifth
              Container(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, bottom: 16, top: 10),
                decoration: BoxDecoration(
                    color: Styles.orangeColor,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
                child: TicketDateView(
                  leftValue: tickets['date'],
                  rightValue: tickets['number'],
                  leftKey: "Date",
                  rightKey: "Number",
                  middleValue: tickets['departure_time'],
                  middleKey: "Departure time",
                ),
              ),
            ],
          ),
        ));
  }
}
