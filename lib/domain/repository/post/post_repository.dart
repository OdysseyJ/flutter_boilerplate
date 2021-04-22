import 'package:architecture_app/data/interface/post_repository_interface.dart';
import 'package:architecture_app/domain/model/postWithPagenation.dart';
import 'package:architecture_app/graphql/query/posts.dart';
import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class PostGraphQLRepository implements PostRepositoryInterface {
  final GraphQLClient client;

  PostGraphQLRepository({
    @required this.client,
  });

  @override
  Future<PostWithPagination> getPosts() async {
    try {
      final results = await client.query(
        QueryOptions(
          document: PostsQuery.document,
        ),
      );
      if (results.hasException) {
        throw results.exception;
      } else {
        return PostWithPagination.fromJson(results.data['posts']);
      }
    } catch (error) {
      print('fail to get posts');
      print(error);
      throw error.exception;
    }
  }
}
