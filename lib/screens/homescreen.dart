import 'package:carousel_slider/carousel_slider.dart';
import 'package:codercubepracticale/controllers/home_controller.dart';
import 'package:codercubepracticale/utils/app_color.dart';
import 'package:codercubepracticale/utils/app_dimen.dart';
import 'package:codercubepracticale/widgets/packege_cart.dart';
import 'package:codercubepracticale/widgets/section_cart.dart';

import 'package:codercubepracticale/widgets/slider_widgets.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeController homecontroller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Appcolor.whitecolor,
        body: SafeArea(
            child: GetBuilder<HomeController>(
          builder: (controller) => controller.isloading
              ? const Center(child: CircularProgressIndicator())
              : controller.homemodel == null
                  ? Center(
                      child: Text(
                      'Data not found...',
                      style: TextStyle(color: Appcolor.whitecolor),
                    ))
                  : ListView(children: [
                      Container(
                        color: Appcolor.blackcolor,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.account_balance_rounded,
                                    color: Appcolor.whitecolor,
                                    size: Appdimen.dimen20,
                                  ),
                                ],
                              ),
                            ),
                            CarouselSlider.builder(
                              itemCount: controller
                                  .homemodel!.data!.advertisments!.length,
                              itemBuilder: (BuildContext context, int itemIndex,
                                      int pageViewIndex) =>
                                  Sliderwidget(
                                advertisments: controller
                                    .homemodel!.data!.advertisments![itemIndex],
                              ),
                              options: CarouselOptions(
                                autoPlay: true,
                                enlargeCenterPage: true,
                                viewportFraction: 0.9,
                                aspectRatio: 2.0,
                                initialPage: 2,
                              ),
                            ),
                            SizedBox(
                                height: Appdimen.dimen230,
                                child: ListView.builder(
                                  itemCount: controller
                                      .homemodel!.data!.packages!.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => PackageCart(
                                      packages: controller
                                          .homemodel!.data!.packages![index]),
                                )),
                            SizedBox(height: Appdimen.dimen8,),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: GridView.builder(
                          itemCount:
                              controller.homemodel!.data!.packages!.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 8,
                                  childAspectRatio: 0.8,
                                  mainAxisSpacing: 8),
                          itemBuilder: (BuildContext context, int index) {
                            return SectionCard(
                                sections: controller
                                    .homemodel!.data!.sections![index]);
                          },
                        ),
                      )
                    ]),
        )));
  }
}
