import 'package:architecture_app/presentation/bloc/post_state.dart';
import 'package:architecture_app/presentation/provider/post_provider.dart';
import 'package:architecture_app/presentation/widget/list_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostPageWithProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Provider'),
        ),
        body: ChangeNotifierProvider(
          create: (_) => PostProvider()..postLoad(),
          builder: (ctx, provider) {
            final state = ctx.watch<PostProvider>().postState;
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
          },
        ));
  }
}
