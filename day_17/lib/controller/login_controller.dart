import 'package:day_17/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  var idController = TextEditingController();
  var pwController = TextEditingController();

  login()async{
    Get.find<AuthController>().login(idController.text, pwController.text);
  }
}