import 'package:codercubepracticale/models/home_model.dart';
import 'package:codercubepracticale/utils/app_dimen.dart';
import 'package:codercubepracticale/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  final Sections sections;
  const SectionCard({Key? key, required this.sections}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(Appdimen.dimen5),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.network(
              sections.imageUrl.toString(),
              width: Appdimen.wid,
              fit: BoxFit.fill,
              height: Appdimen.dimen100,
            ),
          ),
        ),
        Text(
          '${sections.title}',
          style: Textstyles.blacktext12,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        SizedBox(
          height: Appdimen.dimen5,
        )
      ],
    );
  }
}
