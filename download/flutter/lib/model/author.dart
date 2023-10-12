import 'package:secret_cat_sdk/api/api_routes.dart';

class Author {
  String id;
  String name;
  String username;
  String? avatar;

  Author(
      {required this.id,
      required this.name,
      required this.username,
      required this.avatar});

  factory Author.fromJson(Map<String, dynamic> json) => Author(
        id: json['id'],
        name: json['name'],
        username: json['username'],
        avatar: json['avatar'] != null
            ? '${ApiRoutes.userAssetsUrl}${json['id']}/${json['avatar']}'
            : null,
      );

  @override
  String toString() =>
      'Author{name: $name, username: $username, avatar: $avatar}';
}
