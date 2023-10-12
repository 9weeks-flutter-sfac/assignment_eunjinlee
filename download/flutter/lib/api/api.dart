import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:secret_cat_sdk/api/api_routes.dart';
import 'package:secret_cat_sdk/model/author.dart';
import 'package:secret_cat_sdk/model/secret.dart';

class SecretCatApiErrorHandler extends Interceptor {
  @override
  onError(DioError err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      print(":: Dio Error! [스팩관리자에게 문의하세요] ${err.message}");
    }
    super.onError(err, handler);
  }
}

final _dio = Dio(BaseOptions(baseUrl: ApiRoutes.baseUrl))
  ..interceptors.add(SecretCatApiErrorHandler());

class SecretCatApi {
  static Future<List<Secret>> fetchSecrets() async {
    final response = await _dio.get(ApiRoutes.secrets,
        queryParameters: {"expand": "author", "sort": "-created"});
    final List<dynamic> json = response.data['items'];
    final items = json.map((e) => Secret.fromJsonWithExpand(e)).toList();
    return items;
  }

  static Future<List<Author>> fetchAuthors() async {
    final response = await _dio.get(ApiRoutes.users);
    final List<dynamic> json = response.data['items'];
    final items = json.map((e) => Author.fromJson(e)).toList();
    return items;
  }

  static Future<Secret?> addSecret(String secret) async {
    final response = await _dio.post(ApiRoutes.secrets, data: {
      "secret": secret,
    }, queryParameters: {
      "expand": "author"
    });
    final json = response.data;
    return Secret.fromJsonWithExpand(json);
  }
}
