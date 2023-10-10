// http://52.79.115.43:8090/api/collections/secrets/records

import 'package:secret_cat_sdk/model/author.dart';

class Secret {
  String secret;
  DateTime createdAt;
  Author? author;

  Secret({required this.secret, required this.author, required this.createdAt});

  factory Secret.fromJson(Map<String, dynamic> json) => Secret(
        secret: json['secret'],
        createdAt: DateTime.parse(json['created']),
        author: json['author'] != null
            ? Author.fromJson(
                json['author'],
              )
            : null,
      );

  factory Secret.fromJsonWithExpand(Map<String, dynamic> json) => Secret(
        secret: json['secret'],
        createdAt: DateTime.parse(json['created']),
        author: json['expand']?['author'] != null
            ? Author.fromJson(
                json['expand']['author'],
              )
            : null,
      );

  @override
  String toString() => 'Secret{secret: $secret, author: $author}';
}
