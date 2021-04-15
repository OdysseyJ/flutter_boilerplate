import 'package:flutter/foundation.dart';
import 'package:architecture_app/graphql/graphql_api.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class PostProvider {
  final GraphQLClient client;

  PostProvider({
    @required this.client,
  });

  Future<GetPosts$Query$PostWithPagination> getPosts() async {
    final results = await client.query(
      QueryOptions(
        document: GetPostsQuery().document,
      ),
    );
    if (results.hasException) {
      throw results.exception;
    } else {
      return GetPosts$Query.fromJson(results.data).posts;
    }
  }
}
