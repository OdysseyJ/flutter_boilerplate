import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final HttpLink _httpLink = HttpLink(
  'https://api.graphqlplaceholder.com/',
);

final AuthLink _authLink = AuthLink(
  getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
);

final Link _link = _authLink.concat(_httpLink);

GraphQLClient client = GraphQLClient(
  cache: GraphQLCache(store: HiveStore()),
  link: _link,
);

ValueNotifier<GraphQLClient> clientNotifier = ValueNotifier(client);
