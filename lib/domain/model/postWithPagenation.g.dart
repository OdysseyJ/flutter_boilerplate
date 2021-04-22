// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postWithPagenation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostWithPagination _$PostWithPaginationFromJson(Map<String, dynamic> json) {
  return PostWithPagination(
    json['count'] as int,
    json['currentPage'] as int,
    json['totalPages'] as int,
    (json['data'] as List)
        ?.map(
            (e) => e == null ? null : Post.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PostWithPaginationToJson(PostWithPagination instance) =>
    <String, dynamic>{
      'count': instance.count,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
    };
