import 'dart:convert';

import 'package:codercubepracticale/models/home_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  bool isloading = true;
  HomeModel? homemodel;
  @override
  void onInit() {
    gethomedata();
    super.onInit();
  }

  void gethomedata() {
    http.get(Uri.parse('http://44.234.205.222/eventapp/api/home/data'),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        }).then((value) {
      isloading = false;
      update();
      if (value.statusCode == 200) {
        print(value.statusCode.toString());
        homemodel = HomeModel.fromJson(json.decode(value.body));
        print(value.toString());
      } else {
        print(value.statusCode);
      }
    }).onError((error, stackTrace) {
      isloading = false;
      update();
      print(error.toString());
    });
  }
}
