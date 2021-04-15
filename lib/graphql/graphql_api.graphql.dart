// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class GetPosts$Query$PostWithPagination$Post$User with EquatableMixin {
  GetPosts$Query$PostWithPagination$Post$User();

  factory GetPosts$Query$PostWithPagination$Post$User.fromJson(
          Map<String, dynamic> json) =>
      _$GetPosts$Query$PostWithPagination$Post$UserFromJson(json);

  String id;

  String name;

  @override
  List<Object> get props => [id, name];
  Map<String, dynamic> toJson() =>
      _$GetPosts$Query$PostWithPagination$Post$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPosts$Query$PostWithPagination$Post$Comment with EquatableMixin {
  GetPosts$Query$PostWithPagination$Post$Comment();

  factory GetPosts$Query$PostWithPagination$Post$Comment.fromJson(
          Map<String, dynamic> json) =>
      _$GetPosts$Query$PostWithPagination$Post$CommentFromJson(json);

  String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() =>
      _$GetPosts$Query$PostWithPagination$Post$CommentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPosts$Query$PostWithPagination$Post with EquatableMixin {
  GetPosts$Query$PostWithPagination$Post();

  factory GetPosts$Query$PostWithPagination$Post.fromJson(
          Map<String, dynamic> json) =>
      _$GetPosts$Query$PostWithPagination$PostFromJson(json);

  String id;

  String title;

  GetPosts$Query$PostWithPagination$Post$User author;

  List<GetPosts$Query$PostWithPagination$Post$Comment> comments;

  @override
  List<Object> get props => [id, title, author, comments];
  Map<String, dynamic> toJson() =>
      _$GetPosts$Query$PostWithPagination$PostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPosts$Query$PostWithPagination with EquatableMixin {
  GetPosts$Query$PostWithPagination();

  factory GetPosts$Query$PostWithPagination.fromJson(
          Map<String, dynamic> json) =>
      _$GetPosts$Query$PostWithPaginationFromJson(json);

  int count;

  int currentPage;

  int totalPages;

  List<GetPosts$Query$PostWithPagination$Post> data;

  @override
  List<Object> get props => [count, currentPage, totalPages, data];
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
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'data'),
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
                          ])),
                      FieldNode(
                          name: NameNode(value: 'comments'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'id'),
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
