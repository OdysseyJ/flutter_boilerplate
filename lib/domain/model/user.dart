import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  User(this.id, this.name, this.username, this.email, this.phone, this.website);

  String id;
  String name;
  String username;
  String email;
  String phone;
  String website;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
