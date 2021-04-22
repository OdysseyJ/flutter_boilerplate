import 'package:architecture_app/data/network/graphql_client.dart';
import 'package:architecture_app/presentation/app/app.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async {
  // graphql-flutter using HiveStore for persistence,
  await initHiveForFlutter();

  print('TEST');
  runApp(GraphQLProvider(client: clientNotifier, child: App()));
}
