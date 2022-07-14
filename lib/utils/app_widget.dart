import 'package:codercubepracticale/utils/app_color.dart';
import 'package:codercubepracticale/utils/app_dimen.dart';
import 'package:flutter/material.dart';

class Appwidget {
  static roundshap({required IconData icon}) {
    return Container(
      height: Appdimen.dimen30,
      width: Appdimen.dimen30,
      decoration: BoxDecoration(
        color: Appcolor.whitecolor,
        borderRadius: BorderRadius.all(Radius.circular(Appdimen.dimen30)),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          icon,
          color: Appcolor.blackcolor,
          size: Appdimen.dimen20,
        ),
      ]),
    );
  }
}
