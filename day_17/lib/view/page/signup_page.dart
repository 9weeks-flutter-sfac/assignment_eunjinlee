
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
        TextField(controller: controller.emailController,),
        TextField(controller: controller.usernameController,),
        TextField(controller: controller.pwController,),
        TextField(controller: controller.pw2Controller,),

        ElevatedButton(onPressed: controller.SignUp(), 
        child: const Text('시작하기')
        
      
    ),
      ],
   ));
  
  }
  
}