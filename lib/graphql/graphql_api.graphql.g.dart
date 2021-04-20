// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostMixin$User _$PostMixin$UserFromJson(Map<String, dynamic> json) {
  return PostMixin$User()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..username = json['username'] as String
    ..email = json['email'] as String
    ..phone = json['phone'] as String
    ..website = json['website'] as String;
}

Map<String, dynamic> _$PostMixin$UserToJson(PostMixin$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
    };

GetPosts$Query$PostWithPagination$Post
    _$GetPosts$Query$PostWithPagination$PostFromJson(
        Map<String, dynamic> json) {
  return GetPosts$Query$PostWithPagination$Post()
    ..id = json['id'] as String
    ..title = json['title'] as String
    ..body = json['body'] as String
    ..author = json['author'] == null
        ? null
        : PostMixin$User.fromJson(json['author'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetPosts$Query$PostWithPagination$PostToJson(
        GetPosts$Query$PostWithPagination$Post instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'author': instance.author?.toJson(),
    };

GetPosts$Query$PostWithPagination _$GetPosts$Query$PostWithPaginationFromJson(
    Map<String, dynamic> json) {
  return GetPosts$Query$PostWithPagination()
    ..count = json['count'] as int
    ..currentPage = json['currentPage'] as int
    ..totalPages = json['totalPages'] as int
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : GetPosts$Query$PostWithPagination$Post.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GetPosts$Query$PostWithPaginationToJson(
        GetPosts$Query$PostWithPagination instance) =>
    <String, dynamic>{
      'count': instance.count,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
    };

GetPosts$Query _$GetPosts$QueryFromJson(Map<String, dynamic> json) {
  return GetPosts$Query()
    ..posts = json['posts'] == null
        ? null
        : GetPosts$Query$PostWithPagination.fromJson(
            json['posts'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetPosts$QueryToJson(GetPosts$Query instance) =>
    <String, dynamic>{
      'posts': instance.posts?.toJson(),
    };

Post$Query$Post _$Post$Query$PostFromJson(Map<String, dynamic> json) {
  return Post$Query$Post()
    ..author = json['author'] == null
        ? null
        : PostMixin$User.fromJson(json['author'] as Map<String, dynamic>)
    ..id = json['id'] as String
    ..title = json['title'] as String
    ..body = json['body'] as String;
}

Map<String, dynamic> _$Post$Query$PostToJson(Post$Query$Post instance) =>
    <String, dynamic>{
      'author': instance.author?.toJson(),
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };

Post$Query _$Post$QueryFromJson(Map<String, dynamic> json) {
  return Post$Query()
    ..post = json['post'] == null
        ? null
        : Post$Query$Post.fromJson(json['post'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Post$QueryToJson(Post$Query instance) =>
    <String, dynamic>{
      'post': instance.post?.toJson(),
    };

PostArguments _$PostArgumentsFromJson(Map<String, dynamic> json) {
  return PostArguments(
    postId: json['postId'] as String,
  );
}

Map<String, dynamic> _$PostArgumentsToJson(PostArguments instance) =>
    <String, dynamic>{
      'postId': instance.postId,
    };
