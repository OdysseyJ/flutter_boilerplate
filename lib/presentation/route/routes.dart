import 'package:architecture_app/presentation/home/home_binding.dart';
import 'package:architecture_app/presentation/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Routes {
  static String home = "/";
  static detail(String id) => "/detail/:id";
  static String search = "/search";

  List<GetPage> get pages => [
        GetPage(name: home, page: () => HomePage(), binding: HomeBinding()),
        GetPage(name: detail("id"), page: () => Scaffold()),
        GetPage(name: search, page: () => Scaffold())
      ];
}
