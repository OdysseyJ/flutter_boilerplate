import 'package:architecture_app/screens/home/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Architecture demo'),
      ),
      body: Container(
        child: BlocBuilder<HomeBloc, HomeState>(
          buildWhen: (previous, current) {
            return true;
          },
          builder: (context, state) {
            if (state is HomeLoadingState) {
              return Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else if (state is HomeLoadedState) {
              final posts = state.posts;
              return ListView.builder(
                itemCount: posts.data.length,
                itemBuilder: (context, index) {
                  final post = posts.data[index];
                  return ListTile(
                    key: Key(post.id),
                    title: Text(post.title),
                    subtitle: Text('By: ${post.author.name}'),
                  );
                },
              );
            } else {
              return Container(
                child: Center(
                  child: Text('You have an error'),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
