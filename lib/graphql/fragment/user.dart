import 'package:graphql_flutter/graphql_flutter.dart';

class UserFragment {
  static final userInfo = gql('''
    fragment User_Info on User {
      id
      name
      username
      email
      phone
      website
    }
  ''');
}
