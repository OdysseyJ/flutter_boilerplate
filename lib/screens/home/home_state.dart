import 'package:architecture_app/graphql/graphql_api.dart';
import 'package:flutter/material.dart';

class HomeState {}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedState extends HomeState {
  final GetPosts$Query$PostWithPagination posts;
  final bool hasReachedMax;
  HomeLoadedState({@required this.posts, @required this.hasReachedMax});
}

class HomeErrorState extends HomeState {}
