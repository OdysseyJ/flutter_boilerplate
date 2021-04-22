import 'package:architecture_app/data/network/graphql_client.dart';
import 'package:architecture_app/domain/repository/post/post_repository.dart';
import 'package:architecture_app/presentation/bloc/post_state.dart';
import 'package:flutter/material.dart';

class PostProvider with ChangeNotifier {
  final PostGraphQLRepository postGraphQLRepository =
      PostGraphQLRepository(client: client);

  PostState _postState = PostState();

  PostState get postState => _postState;

  void postLoad() async {
    try {
      _postState = PostLoading();
      notifyListeners();
      final result = await postGraphQLRepository.getPosts();
      _postState = PostLoaded(
        result: result,
      );
      notifyListeners();
    } catch (error) {
      _postState = PostError();
      notifyListeners();
    }
  }
}
