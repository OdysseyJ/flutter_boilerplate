import 'package:architecture_app/client.dart';
import 'package:architecture_app/providers/post_provider.dart';
import 'package:architecture_app/repositories/post_repository.dart';
import 'package:architecture_app/screens/home/home_bloc.dart';
import 'package:architecture_app/screens/home/home_event.dart';
import 'package:architecture_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider(
          create: (context) => HomeBloc(
              postRepository:
                  PostRepository(postProvider: PostProvider(client: client)))
            ..add(HomeLoadEvent()),
          child: HomeScreen(),
        ));
  }
}
