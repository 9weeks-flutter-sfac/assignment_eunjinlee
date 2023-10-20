
import 'package:day_17/controller/auth_controller.dart';
import 'package:day_17/controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends GetView<SignUpController>{
  const SignUpPage({super.key});
  static const route = '/signup';
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(controller: controller.emailController, decoration: const InputDecoration(labelText: '이메일'),),
        TextField(controller: controller.usernameController,decoration: const InputDecoration(labelText: '비밀번호'),
              obscureText: true,),
        TextField(controller: controller.pwController,decoration: const InputDecoration(labelText: '비밀번호 확인'),
              obscureText: true),
        TextField(controller: controller.pw2Controller, decoration: const InputDecoration(labelText: '사용자 이름'),),
        SizedBox(height: 16),
        
        ElevatedButton(
     onPressed: () {
      String email = controller.emailController.text.trim();  
      String password = controller.pwController.text.trim();
      String confirmPassword = controller.pw2Controller.text.trim();
      String username = controller.usernameController.text.trim();

      if (password == confirmPassword) {
      Get.find<AuthController>().signup(email, password, confirmPassword, username);
      
} else {
      
       Get.snackbar('비밀번호 불일치', '비밀번호와 비밀번호 확인이 일치하지 않습니다.',
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(milliseconds: 3000),
      backgroundColor: Colors.red,
      colorText: Colors.white);
}

  },
      child: Text('회원 가입'),
),

      
    
      ],
   ));
  
  }
  
}