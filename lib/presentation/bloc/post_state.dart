import 'package:architecture_app/graphql/graphql_api.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class PostState extends Equatable {
  @override
  List<Object> get props => [];
}

class PostInitial extends PostState {}

class PostLoading extends PostState {}

class PostLoaded extends PostState {
  final GetPosts$Query$PostWithPagination posts;
  final bool hasReachedMax;
  PostLoaded({@required this.posts, @required this.hasReachedMax});

  @override
  List<Object> get props => [posts, hasReachedMax];

  PostLoaded copyWith({
    GetPosts$Query$PostWithPagination posts,
    bool hasReachedMax,
  }) {
    return PostLoaded(
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() =>
      'PostSuccess { posts: ${posts.data.length}, hasReachedMax: $hasReachedMax }';
}

class PostError extends PostState {}
