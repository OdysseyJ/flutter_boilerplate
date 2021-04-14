// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class GetPosts$Query$PostWithPagination with EquatableMixin {
  GetPosts$Query$PostWithPagination();

  factory GetPosts$Query$PostWithPagination.fromJson(
          Map<String, dynamic> json) =>
      _$GetPosts$Query$PostWithPaginationFromJson(json);

  int count;

  int currentPage;

  int totalPages;

  @override
  List<Object> get props => [count, currentPage, totalPages];
  Map<String, dynamic> toJson() =>
      _$GetPosts$Query$PostWithPaginationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPosts$Query with EquatableMixin {
  GetPosts$Query();

  factory GetPosts$Query.fromJson(Map<String, dynamic> json) =>
      _$GetPosts$QueryFromJson(json);

  GetPosts$Query$PostWithPagination posts;

  @override
  List<Object> get props => [posts];
  Map<String, dynamic> toJson() => _$GetPosts$QueryToJson(this);
}

class GetPostsQuery extends GraphQLQuery<GetPosts$Query, JsonSerializable> {
  GetPostsQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'getPosts'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'posts'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'count'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'currentPage'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'totalPages'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'title'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'author'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'name'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'getPosts';

  @override
  List<Object> get props => [document, operationName];
  @override
  GetPosts$Query parse(Map<String, dynamic> json) =>
      GetPosts$Query.fromJson(json);
}
