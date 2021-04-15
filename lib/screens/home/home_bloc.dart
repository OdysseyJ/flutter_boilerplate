import 'package:flutter/foundation.dart';
import 'package:bloc/bloc.dart';

import 'package:architecture_app/repositories/post_repository.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final PostRepository postRepository;

  HomeBloc({
    @required this.postRepository,
  }) : super(null);

  get initialState => HomeInitialState();

  @override
  Stream<HomeState> mapEventToState(event) async* {
    if (event is HomeLoadEvent) {
      try {
        yield HomeLoadingState();
        final posts = await postRepository.getMainPosts();
        yield HomeLoadedState(
          posts: posts,
          hasReachedMax: false,
        );
      } catch (error) {
        yield HomeErrorState();
      }
    }
  }
}
