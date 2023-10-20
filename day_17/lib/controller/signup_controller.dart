
import 'package:day_17/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  var emailController = TextEditingController();
  var pwController = TextEditingController();
  var pw2Controller = TextEditingController();
  var usernameController = TextEditingController();

  SignUp() {
    Get.find<AuthController>().signup(emailController.text, pwController.text, pw2Controller.text,usernameController.text);
  }
}
