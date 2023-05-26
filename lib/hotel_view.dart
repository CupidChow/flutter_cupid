
import 'package:flutter/material.dart';
import 'package:flutter_day1/util/app_layout.dart';
import 'package:flutter_day1/util/appstyle.dart';
import 'package:gap/gap.dart';

class HotelView extends StatefulWidget {
  final Map<String, dynamic>  hotel;


  const HotelView({ Key? key, required this.hotel}):super (key:key);
  @override
  State<HotelView> createState() => _HotelViewState();
}

class _HotelViewState extends State<HotelView> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      margin: const EdgeInsets.only(right: 16, top: 5),
      width: size.width * 0.6,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          color: Styles.primaryColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 12, spreadRadius: 5)
          ]),
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              color: Styles.primaryColor,
              image:
                  const DecorationImage(image: AssetImage("images/icon.png")),
            ),
          ),
          const Gap(8),
          Text(
            widget.hotel['place'],
            style: Styles.headLineMediaStyle.copyWith(color: Styles.kakiColor),
          ),
          const Gap(8),
          Text(
            widget.hotel['destination'],
            style: Styles.headLineMediaStyle.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            "\$${widget.hotel['price']}/night",
            style: Styles.headLineStyle.copyWith(color: Styles.kakiColor),
          )
        ],
      ),
    );
  }
}
