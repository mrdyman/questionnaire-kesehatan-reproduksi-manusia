import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

List<User> listUserFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String listUserToJson(User data) => json.encode(data.toJson());

@freezed
class User with _$User {
  const factory User({
    int? id,
    required String username,
    required String name,
    required String token,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
