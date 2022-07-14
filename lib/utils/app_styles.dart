import 'package:codercubepracticale/utils/app_color.dart';
import 'package:codercubepracticale/utils/app_dimen.dart';
import 'package:flutter/cupertino.dart';

class Textstyles {
  static TextStyle get blacktext16 => TextStyle(
      color: Appcolor.blackcolor,
      fontSize: Appdimen.dimen16,
      fontWeight: FontWeight.w500);

  static TextStyle get whitetext20600 => TextStyle(
      color: Appcolor.whitecolor,
      fontSize: Appdimen.dimen20,
      fontWeight: FontWeight.w600);

  static TextStyle get blacktext12 => TextStyle(
      color: Appcolor.blackcolor,
      fontSize: Appdimen.dimen12,
      fontWeight: FontWeight.w500);
}
