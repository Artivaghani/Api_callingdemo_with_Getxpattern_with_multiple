import 'package:codercubepracticale/models/home_model.dart';
import 'package:codercubepracticale/utils/app_color.dart';
import 'package:codercubepracticale/utils/app_dimen.dart';
import 'package:codercubepracticale/utils/app_styles.dart';
import 'package:flutter/material.dart';

class Sliderwidget extends StatelessWidget {
  final Advertisments advertisments;
  const Sliderwidget({Key? key, required this.advertisments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Appdimen.wid,
        height: Appdimen.dimen150,
        margin: EdgeInsets.all(Appdimen.dimen5),
        child: Stack(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: const EdgeInsets.all(10.0),
              child: Image.network(
                advertisments.imageUrl.toString(),
                width: Appdimen.wid,
                fit: BoxFit.cover,
                height: Appdimen.dimen200,
              ),
            ),
            Positioned(
              top: 30,
              right: 30,
              child: Container(
                height: Appdimen.dimen30,
                width: Appdimen.dimen70,
                decoration: BoxDecoration(
                  color: Appcolor.whitecolor,
                  borderRadius:
                      BorderRadius.all(Radius.circular(Appdimen.dimen30)),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.star,
                    color: Appcolor.blackcolor,
                    size: Appdimen.dimen20,
                  ),
                  SizedBox(
                    width: Appdimen.dimen5,
                  ),
                  Text(
                    '${advertisments.rating}',
                    style: Textstyles.blacktext16,
                  )
                ]),
              ),
            )
          ],
        ));
  }
}
