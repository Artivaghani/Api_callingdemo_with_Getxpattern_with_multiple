import 'package:codercubepracticale/models/home_model.dart';
import 'package:codercubepracticale/screens/packages_screen.dart';
import 'package:codercubepracticale/utils/app_dimen.dart';
import 'package:codercubepracticale/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PackageCart extends StatelessWidget {
  final Packages packages;
  const PackageCart({Key? key, required this.packages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Get.dialog(PackagesScreen(products:packages.products),);
      }),
      child: Container(
        width: Appdimen.dimen200,
        margin: EdgeInsets.only(left: Appdimen.dimen5),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(Appdimen.dimen5),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.network(
                      packages.headerImageUrl.toString(),
                      width: Appdimen.wid,
                      fit: BoxFit.cover,
                      height: Appdimen.dimen200,
                    ),
                  ),
                ),
              ),
              Text(
                '${packages.name}',
                style: Textstyles.blacktext16,
              ),
              SizedBox(
                height: Appdimen.dimen5,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Packegescard extends StatelessWidget {
  final Products products;
  const Packegescard({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Appdimen.dimen5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Image.network(
          products.product!.bannerImageUrl.toString(),
          width: Appdimen.wid,
          fit: BoxFit.cover,
          height: Appdimen.dimen200,
        ),
      ),
    );
  }
}
