import 'package:architecture_app/utils/addFragments.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../fragment/post.dart';

class PostsQuery {
  static final document = addFragments(gql('''
    query Posts {
      posts {
        count
        currentPage
        totalPages
        data{
          ...Post
        }
      }
    }
  '''), [PostFragment.post]);
}
