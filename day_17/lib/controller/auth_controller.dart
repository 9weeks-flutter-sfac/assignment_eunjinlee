import 'package:day_17/model/profile.dart';
import 'package:day_17/view/page/main_page.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:day_17/util/api_routes.dart';

class AuthController extends GetxController {
  final Rxn<Profile> _profile = Rxn<Profile>();
  Dio dio = Dio(); 
  
  Profile? get profile => _profile.value;

  login(String id, String pw) async{
    var res = 
        await dio.post(ApiRoutes.login, data:{'identity': id, 'password': pw});
    if (res. statusCode == 200) {
      var data = Map<String, dynamic>.from(res.data['record']);
      _profile(Profile.fromMap(data));
  
  }
}

   signup(String email, String pw, String pw2, String username) async{
    var res = await dio.post(ApiRoutes.signup, data:{
      "email": email, 
      "password": pw, 
      "password2": pw2, 
      "username": username
      }); 
      _profile(Profile.fromMap(res.data));
   }

   logout() {
   _profile.value = null;
   }

   _handleOnProfileChanged(value) {
    if (value != null) {
     Get.toNamed(MainPage.route);
     return;//메인으로 이동
}

    Get.toNamed('/login');//로그인으로 이동 
    return;
}



@override
  void onInit() {
    super.onInit();
    
    ever(_profile, _handleOnProfileChanged);
  }
}
