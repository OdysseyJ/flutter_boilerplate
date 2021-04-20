import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  // Widget _blocExample() {
  //   return BlocBuilder<PostBloc, PostState>(
  //     buildWhen: (previous, current) {
  //       return true;
  //     },
  //     builder: (context, state) {
  //       if (state is PostLoading) {
  //         return Container(
  //           child: Center(
  //             child: CircularProgressIndicator(),
  //           ),
  //         );
  //       } else if (state is PostLoaded) {
  //         final posts = state.posts;
  //         return ListView.builder(
  //           itemCount: posts.data.length,
  //           itemBuilder: (context, index) {
  //             final post = posts.data[index];
  //             return ListTile(
  //               key: Key(post.id),
  //               title: Text(post.title),
  //               subtitle: Text('By: ${post.author.name}'),
  //             );
  //           },
  //         );
  //       } else {
  //         return Container(
  //           child: Center(
  //             child: Text('You have an error'),
  //           ),
  //         );
  //       }
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Architecture demo'),
        ),
        body: Obx(() => Center(child: Text(controller.helloWorld.value))));
  }
}
