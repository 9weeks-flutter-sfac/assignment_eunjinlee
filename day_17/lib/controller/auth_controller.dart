import 'package:day_17/model/profile.dart';
import 'package:day_17/view/page/login_page.dart';
import 'package:day_17/view/page/main_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:day_17/util/api_routes.dart';

class AuthController extends GetxController {
  final Rxn<Profile> _profile = Rxn<Profile>();
  Dio dio = Dio();

  Profile? get profile => _profile.value;

  login(String id, String pw) async {
    try {
      var res =
          await dio.post(ApiRoutes.login, data: {'identity': id, 'password': pw});
      if (res.statusCode == 200) {
        var data = Map<String, dynamic>.from(res.data['record']);
        _profile.value = Profile.fromMap(data);
      }
    } catch (e) {
      print(e);

      Get.snackbar('로그인 실패', '잘못된 이메일 또는 비밀번호입니다. 다시 시도해주세요',
          snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(milliseconds: 3000),
          backgroundColor: Colors.amber,
          colorText: Colors.white);
    }
  }

  logout() async {
    _profile.value = null;
    Get.offAllNamed(LoginPage.route);
  }

  signup(String email, String pw, String pw2, String username) async {
    try {
      var response = await dio.post(ApiRoutes.signup, data: {
        "email": email,
        "password": pw,
        "password2": pw2,
        "username": username,
      });

      if (response.statusCode == 200) {
          Get.snackbar('가입 성공', '가입이 성공적으로 완료되었습니다.',
          snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(milliseconds: 3000),
          backgroundColor: Colors.green,
          colorText: Colors.white);
    } else {
      
      Get.snackbar('가입 실패', '가입 중 오류가 발생했습니다.',
          snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(milliseconds: 3000),
          backgroundColor: Colors.red,
          colorText: Colors.white);
      } 
        
    
    } catch (e) {
      print(e);
    
    }
  }

  _handleOnProfileChanged(Profile? value) {
    if (value != null) {
      Get.offNamed(MainPage.route); // Move to the main page
    } else {
      Get.offNamed(LoginPage.route); // Move to the login page
    }
  }

  @override
  void onInit() {
    super.onInit();
    ever(_profile, _handleOnProfileChanged);

  }
}