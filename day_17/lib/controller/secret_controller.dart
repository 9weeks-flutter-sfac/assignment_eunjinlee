import 'package:day_17/util/api_routes.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:day_17/model/secret.dart';

class SecretController extends GetxController{
final RxList<Secret>_secrets = <Secret>[].obs; 
 Dio dio = Dio();

List<Secret> get secrets => _secrets;

 fetchSecrets() async{ //dio를 통해서 데이터를 가져오고 secrets에다가 넣기
   var res = await dio.get(ApiRoutes.secret);
   var items = List<Map<String, dynamic>>.from(res.data['items']);
   _secrets(items.map((e) => Secret.fromMap(e)).toList());
   
   }



@override
  void onInit() {
    super.onInit();
    fetchSecrets();
  }
}