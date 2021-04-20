// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

mixin UserInfoMixin {
  String id;
  String name;
  String username;
  String email;
  String phone;
  String website;
}
mixin PostInfoMixin {
  String id;
  String title;
  String body;
}
mixin PostMixin {
  PostMixin$User author;
  String id;
  String title;
  String body;
}

@JsonSerializable(explicitToJson: true)
class PostMixin$User with EquatableMixin, UserInfoMixin {
  PostMixin$User();

  factory PostMixin$User.fromJson(Map<String, dynamic> json) =>
      _$PostMixin$UserFromJson(json);

  @override
  List<Object> get props => [id, name, username, email, phone, website];
  Map<String, dynamic> toJson() => _$PostMixin$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPosts$Query$PostWithPagination$Post
    with EquatableMixin, PostMixin, PostInfoMixin {
  GetPosts$Query$PostWithPagination$Post();

  factory GetPosts$Query$PostWithPagination$Post.fromJson(
          Map<String, dynamic> json) =>
      _$GetPosts$Query$PostWithPagination$PostFromJson(json);

  @override
  List<Object> get props => [author, id, title, body, id, title, body];
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

@JsonSerializable(explicitToJson: true)
class Post$Query$Post with EquatableMixin, PostMixin {
  Post$Query$Post();

  factory Post$Query$Post.fromJson(Map<String, dynamic> json) =>
      _$Post$Query$PostFromJson(json);

  @override
  List<Object> get props => [author, id, title, body];
  Map<String, dynamic> toJson() => _$Post$Query$PostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Post$Query with EquatableMixin {
  Post$Query();

  factory Post$Query.fromJson(Map<String, dynamic> json) =>
      _$Post$QueryFromJson(json);

  Post$Query$Post post;

  @override
  List<Object> get props => [post];
  Map<String, dynamic> toJson() => _$Post$QueryToJson(this);
}

class GetPostsQuery extends GraphQLQuery<GetPosts$Query, JsonSerializable> {
  GetPostsQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    FragmentDefinitionNode(
        name: NameNode(value: 'User_Info'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false)),
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
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'username'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'email'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'phone'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'website'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'Post_Info'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(name: NameNode(value: 'Post'), isNonNull: false)),
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
              name: NameNode(value: 'body'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'Post'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(name: NameNode(value: 'Post'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
              name: NameNode(value: 'Post_Info'), directives: []),
          FieldNode(
              name: NameNode(value: 'author'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'User_Info'), directives: [])
              ]))
        ])),
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
                      FragmentSpreadNode(
                          name: NameNode(value: 'Post'), directives: [])
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

@JsonSerializable(explicitToJson: true)
class PostArguments extends JsonSerializable with EquatableMixin {
  PostArguments({@required this.postId});

  @override
  factory PostArguments.fromJson(Map<String, dynamic> json) =>
      _$PostArgumentsFromJson(json);

  final String postId;

  @override
  List<Object> get props => [postId];
  @override
  Map<String, dynamic> toJson() => _$PostArgumentsToJson(this);
}

class PostQuery extends GraphQLQuery<Post$Query, PostArguments> {
  PostQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'Post'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'postId')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'post'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'postId'),
                    value: VariableNode(name: NameNode(value: 'postId')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'Post'), directives: [])
              ]))
        ]))
  ]);

  @override
  final String operationName = 'Post';

  @override
  final PostArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Post$Query parse(Map<String, dynamic> json) => Post$Query.fromJson(json);
}
