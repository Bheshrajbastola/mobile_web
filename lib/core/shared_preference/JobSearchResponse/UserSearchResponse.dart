// ignore: file_names
import 'package:jobhunt/screens/auth/data/model/Users.dart';

class UserSearchResponse {
  List<User>? users;

  UserSearchResponse({this.users});

  factory UserSearchResponse.fromJson(Map<String, dynamic> json) {
    return UserSearchResponse(
      users: json['data'] != null
          ? (json['data'] as List).map((i) => User.fromJson(i)).toList()
          : null,
    );
  }
}
// user: json['user'] != null ? User.fromJson(json['user']) : null,