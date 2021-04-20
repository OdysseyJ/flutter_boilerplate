import 'package:architecture_app/domain/model/postWithPagenation.dart';
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
  final PostWithPagination posts;
  PostLoaded({@required this.posts});

  @override
  List<Object> get props => [posts];

  PostLoaded copyWith({
    PostWithPagination data,
  }) {
    return PostLoaded(
      posts: posts ?? this.posts,
    );
  }

  @override
  String toString() => 'PostSuccess { posts: ${posts.data.length} }';
}

class PostError extends PostState {}
