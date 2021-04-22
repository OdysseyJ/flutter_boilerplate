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
  final PostWithPagination result;
  PostLoaded({@required this.result});

  @override
  List<Object> get props => [result];

  PostLoaded copyWith({
    PostWithPagination result,
  }) {
    return PostLoaded(
      result: result ?? this.result,
    );
  }

  @override
  String toString() => 'PostSuccess { result: $result }';
}

class PostError extends PostState {}
