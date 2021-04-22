import 'package:architecture_app/presentation/bloc/post_page.dart';
import 'package:architecture_app/presentation/getx/post_page.dart';
import 'package:architecture_app/presentation/home/home_controller.dart';
import 'package:architecture_app/presentation/provider/post_page.dart';
import 'package:architecture_app/presentation/widget/keep_alive_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  final List<Widget> _tabs = [
    KeepAliveWrapper(child: PostPageWithGetX()),
    KeepAliveWrapper(child: PostPageWithBloc()),
    KeepAliveWrapper(child: PostPageWithProvider())
  ];

  Widget _pageView() {
    return PageView(
        controller: controller.pageController,
        physics: NeverScrollableScrollPhysics(),
        children: _tabs);
  }

  Widget _bottomNavigationBar() {
    return Obx(() => BottomNavigationBar(
            onTap: (index) {
              controller.pageController.jumpToPage(index);
              controller.changePageIndex(index);
            },
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.currentIndex.value,
            selectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'getx',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'bloc',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: 'provider',
              )
            ]));
  }

  Widget _tabBar() {
    return Scaffold(
        body: _pageView(), bottomNavigationBar: _bottomNavigationBar());
  }

  @override
  Widget build(BuildContext context) {
    return _tabBar();
  }
}
