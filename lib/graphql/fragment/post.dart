import 'package:architecture_app/utils/addFragments.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'user.dart';

class PostFragment {
  static final postInfo = gql('''
    fragment Post_Info on Post {
      id
      title
      body
    }
  ''');

  static final post = addFragments(gql('''
    fragment Post on Post {
      ...Post_Info
      author{
        ...User_Info
      }
    }
    '''), [PostFragment.postInfo, UserFragment.userInfo]);
}
