abstract class ApiRoutes {
  static String get baseUrl => 'http://52.79.115.43:8090/api/';
  static String get secrets => 'collections/secrets/records';
  static String get users => 'collections/users/records';

  static String get userAssetsUrl => 'http://52.79.115.43:8090/api/files/_pb_users_auth_/';
}
