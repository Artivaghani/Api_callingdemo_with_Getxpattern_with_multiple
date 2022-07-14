import 'package:codercubepracticale/models/home_model.dart';
import 'package:codercubepracticale/utils/app_dimen.dart';
import 'package:codercubepracticale/utils/app_styles.dart';
import 'package:codercubepracticale/widgets/packege_cart.dart';
import 'package:flutter/material.dart';

class PackagesScreen extends StatelessWidget {
  final List<Products>? products;
  const PackagesScreen({Key? key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
            margin: const EdgeInsets.all(15),
            height: Appdimen.dimen450,
            child: Column(
              children: [
                Text(
                  'Love Packages',
                  style: Textstyles.whitetext20600,
                ),
                SizedBox(height: Appdimen.dimen8,),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: GridView.builder(
                        itemCount: products!.length,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8),
                        itemBuilder: (BuildContext context, int index) {
                          return Packegescard(products: products![index]);
                        },
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
