import 'package:architecture_app/domain/model/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

@JsonSerializable(explicitToJson: true)
class Post {
  Post(this.id, this.title, this.body, this.author);
  
  String id;
  String title;
  String body;
  User author;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}
