import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum RouteName { GetX, Bloc, Provider }

class HomeController extends GetxService {
  static HomeController get to => Get.find();

  RxInt currentIndex = 0.obs;
  PageController pageController = PageController();

  void changePageIndex(int index) {
    currentIndex(index);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
