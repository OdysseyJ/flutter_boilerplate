import 'package:architecture_app/data/network/graphql_client.dart';
import 'package:architecture_app/domain/repository/post/post_repository.dart';
import 'package:bloc/bloc.dart';

import 'package:rxdart/rxdart.dart';

import 'post_event.dart';
import 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostGraphQLRepository postGraphQLRepository =
      PostGraphQLRepository(client: client);

  PostBloc() : super(PostInitial());

  @override
  Stream<Transition<PostEvent, PostState>> transformEvents(
    Stream<PostEvent> events,
    TransitionFunction<PostEvent, PostState> transitionFn,
  ) {
    return super.transformEvents(
      events.debounceTime(const Duration(milliseconds: 500)),
      transitionFn,
    );
  }

  @override
  Stream<PostState> mapEventToState(event) async* {
    if (event is PostLoadEvent) {
      yield* _postLoad();
    }
  }

  Stream<PostState> _postLoad() async* {
    try {
      yield PostLoading();
      final result = await postGraphQLRepository.getPosts();
      yield PostLoaded(
        result: result,
      );
    } catch (error) {
      yield PostError();
    }
  }
}
