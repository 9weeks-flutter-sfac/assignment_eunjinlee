// ignore_for_file: unnecessary_const

import 'package:day_17/controller/login_controller.dart';
import 'package:day_17/view/page/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class LoginPage extends GetView<LoginController>{
  const LoginPage({super.key});

  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Center(
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
      TextField(controller: controller.idController,),
      TextField(controller: controller.pwController,),
      ElevatedButton(onPressed: controller.login, 
      child: const Text('LOGIN'),),
      TextButton(onPressed: ()=> Get.toNamed(SignupPage.route),
       child: Text('회원가입하기'),
        
      
     ),
      ],
     ),

   ),
   ),
   );
   
  
  }
  
}