import 'package:architecture_app/domain/repository/post/post_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:bloc/bloc.dart';

import 'post_event.dart';
import 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostGraphQLRepository postGraphQLRepository;

  PostBloc({
    @required this.postGraphQLRepository,
  }) : super(PostInitial());

  @override
  Stream<PostState> mapEventToState(event) async* {
    if (event is PostLoadEvent) {
      yield* _mapLoadPostsToState();
    }
  }

  Stream<PostState> _mapLoadPostsToState() async* {
    try {
      yield PostLoading();
      final posts = await postGraphQLRepository.getPosts();
      yield PostLoaded(
        posts: posts,
        hasReachedMax: false,
      );
    } catch (error) {
      yield PostError();
    }
  }
}
