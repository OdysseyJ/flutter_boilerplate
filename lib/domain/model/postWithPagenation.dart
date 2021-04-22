import 'package:architecture_app/domain/model/post.dart';
import 'package:json_annotation/json_annotation.dart';

part 'postWithPagenation.g.dart';

@JsonSerializable(explicitToJson: true)
class PostWithPagination {
  PostWithPagination(this.count, this.currentPage, this.totalPages, this.data);

  int count;
  int currentPage;
  int totalPages;
  List<Post> data;

  factory PostWithPagination.fromJson(Map<String, dynamic> json) =>
      _$PostWithPaginationFromJson(json);

  Map<String, dynamic> toJson() => _$PostWithPaginationToJson(this);
}
