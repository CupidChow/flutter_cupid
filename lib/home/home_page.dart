import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day1/app_data.dart';
import 'package:flutter_day1/hotel_view.dart';
import 'package:flutter_day1/ticket_card_view.dart';
import 'package:flutter_day1/util/appstyle.dart';
import 'package:flutter_day1/widget/left_right_title.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _onClickViewMore() {}


  void _onClickHotelViewMore() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Mornign",
                          style: Styles.headLineSmallStyle2,
                        ),
                        Container(
                          height: 5,
                        ),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineMediaStyle,
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage("images/icon.png"))),
                      width: 50,
                      height: 50,
                    )
                  ],
                ),
                //search
                Container(
                  height: 25,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff4f6fd),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xffbfc205),
                      ),
                      Text(
                        "Search",
                        style: Styles.headLineSmallStyle2,
                      )
                    ],
                  ),
                ),
                //upcoming flight
                Container(
                  height: 30,
                ),
                LeftRightTitle(bigText: "Upcoming Flights", smallText: "View all"),
              ],
            ),
          ),

          ////yickets..
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: tickets.map((e) => TicketCardView(tickets: e)).toList(),
            ),
          ),

          ///hotels
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: Styles.headLineMediaStyle,
                ),
                InkWell(
                  child: Text(
                    "view more",
                    style: Styles.headLineSmallStyle2
                        .copyWith(color: Styles.primaryColor),
                  ),
                  onTap: () {
                    _onClickHotelViewMore();
                  },
                )
              ],
            ),
          ),

          // hotel
          const Gap(15),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children:  hotelList.map(( xx) => HotelView(hotel: xx)).toList(),
                
             
            ),
          )
        ],
      ),
    );
  }
}
