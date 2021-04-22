import 'package:architecture_app/presentation/bloc/post_state.dart';
import 'package:architecture_app/presentation/getx/post_controller.dart';
import 'package:architecture_app/presentation/widget/list_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostPageWithGetX extends GetView<PostController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GetX'),
        ),
        body: Obx(() {
          final state = controller.postState.value;
          if (state is PostLoaded) {
            final posts = state.result.data;
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return listCard(
                    id: post.id, title: post.title, author: post.author.name);
              },
            );
          } else if (state is PostError) {
            return Container(
              child: Center(
                child: Text('failed to fetch posts'),
              ),
            );
          } else {
            return Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        }));
  }
}
