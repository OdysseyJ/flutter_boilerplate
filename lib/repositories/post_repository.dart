import 'package:architecture_app/providers/post_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:architecture_app/graphql/graphql_api.dart';

class PostRepository {
  final PostProvider postProvider;

  PostRepository({
    @required this.postProvider,
  });

  Future<GetPosts$Query$PostWithPagination> getMainPosts() =>
      postProvider.getPosts();
}
