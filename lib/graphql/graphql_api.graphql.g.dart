// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPosts$Query$PostWithPagination _$GetPosts$Query$PostWithPaginationFromJson(
    Map<String, dynamic> json) {
  return GetPosts$Query$PostWithPagination()
    ..count = json['count'] as int
    ..currentPage = json['currentPage'] as int
    ..totalPages = json['totalPages'] as int;
}

Map<String, dynamic> _$GetPosts$Query$PostWithPaginationToJson(
        GetPosts$Query$PostWithPagination instance) =>
    <String, dynamic>{
      'count': instance.count,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
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
