import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'api_endpoints.dart';

final HttpLink _httpLink = HttpLink(APIEndpoints.graphql);

final AuthLink _authLink = AuthLink(
  getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
);

final Link _link = _authLink.concat(_httpLink);

GraphQLClient client = GraphQLClient(
  cache: GraphQLCache(store: HiveStore()),
  link: _link,
);

ValueNotifier<GraphQLClient> clientNotifier = ValueNotifier(client);
