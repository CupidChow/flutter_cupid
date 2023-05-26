import 'package:flutter/material.dart';

Color primary = const Color(0xFF687DAF);

class Styles {
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xffeeedf2);
  static Color textColor = const Color(0xFF3B3B3B);
  static Color orangeColor = const Color(0xFFF37b67);
  static Color kakiColor = const Color(0xFFd2bdb6);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineMediaStyle =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineSmallStyle =
      TextStyle(fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headLineSmallStyle2 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
