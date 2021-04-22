import 'package:flutter/material.dart';

Widget listCard({String id, String title, String author}) {
  return ListTile(
    key: Key(id),
    title: Text(title),
    subtitle: Text('By: $author'),
  );
}
