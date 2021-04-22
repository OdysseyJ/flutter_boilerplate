import 'package:architecture_app/presentation/app/app.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'data/network/api_endpoints.dart';

void main() async {
  // graphql-flutter using HiveStore for persistence,
  await initHiveForFlutter();

  final _errorLink = ErrorLink(
    onGraphQLError: (request, forward, response) {
      print(response);
      return;
    },
    onException: (request, forward, exception) {
      print(exception);
      return;
    },
  );

  final _httpLink = _errorLink.concat(HttpLink(APIEndpoints.graphql));

  final _authLink = _httpLink.concat(AuthLink(
    getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
  ));

  final _link = _authLink;

  final client = GraphQLClient(
    cache: GraphQLCache(store: HiveStore()),
    link: _link,
  );

  final clientNotifier = ValueNotifier(client);

  runApp(GraphQLProvider(client: clientNotifier, child: App()));
}
