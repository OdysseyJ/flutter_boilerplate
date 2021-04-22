import 'package:architecture_app/presentation/home/home_binding.dart';
import 'package:architecture_app/presentation/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        locale: Get.deviceLocale,
        theme: ThemeData(
            primaryColor: Colors.white,
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        debugShowCheckedModeBanner: false,
        initialBinding: HomeBinding(),
        initialRoute: Routes.home,
        getPages: Routes().pages);
  }
}
