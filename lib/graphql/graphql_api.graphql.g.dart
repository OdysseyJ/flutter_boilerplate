// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPosts$Query$PostWithPagination$Post$User
    _$GetPosts$Query$PostWithPagination$Post$UserFromJson(
        Map<String, dynamic> json) {
  return GetPosts$Query$PostWithPagination$Post$User()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$GetPosts$Query$PostWithPagination$Post$UserToJson(
        GetPosts$Query$PostWithPagination$Post$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

GetPosts$Query$PostWithPagination$Post$Comment
    _$GetPosts$Query$PostWithPagination$Post$CommentFromJson(
        Map<String, dynamic> json) {
  return GetPosts$Query$PostWithPagination$Post$Comment()
    ..id = json['id'] as String;
}

Map<String, dynamic> _$GetPosts$Query$PostWithPagination$Post$CommentToJson(
        GetPosts$Query$PostWithPagination$Post$Comment instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

GetPosts$Query$PostWithPagination$Post
    _$GetPosts$Query$PostWithPagination$PostFromJson(
        Map<String, dynamic> json) {
  return GetPosts$Query$PostWithPagination$Post()
    ..id = json['id'] as String
    ..title = json['title'] as String
    ..author = json['author'] == null
        ? null
        : GetPosts$Query$PostWithPagination$Post$User.fromJson(
            json['author'] as Map<String, dynamic>)
    ..comments = (json['comments'] as List)
        ?.map((e) => e == null
            ? null
            : GetPosts$Query$PostWithPagination$Post$Comment.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GetPosts$Query$PostWithPagination$PostToJson(
        GetPosts$Query$PostWithPagination$Post instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author?.toJson(),
      'comments': instance.comments?.map((e) => e?.toJson())?.toList(),
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
