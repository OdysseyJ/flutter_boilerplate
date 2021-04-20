import 'package:architecture_app/data/interface/post_repository_interface.dart';
import 'package:architecture_app/domain/model/postWithPagenation.dart';
import 'package:flutter/foundation.dart';
import 'package:architecture_app/graphql/graphql_api.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class PostGraphQLRepository implements PostRepositoryInterface {
  final GraphQLClient client;

  PostGraphQLRepository({
    @required this.client,
  });

  Future<PostWithPagination> getPosts() async {
    final results = await client.query(
      QueryOptions(
        document: GetPostsQuery().document,
      ),
    );
    if (results.hasException) {
      throw results.exception;
    } else {
      return GetPostsQuery().parse(results.data).posts;
    }
  }
}
