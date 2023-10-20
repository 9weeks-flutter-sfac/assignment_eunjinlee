// ignore_for_file: unnecessary_const

import 'package:day_17/controller/login_controller.dart';
import 'package:day_17/view/page/signup_page.dart';
import 'package:day_17/view/widget/input_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class LoginPage extends GetView<LoginController>{
  const LoginPage({super.key});
  static const route = '/login';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("images/back.jpg"),   
          fit: BoxFit.fitWidth),
        ),
        child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('LOGIN',
          style: TextStyle(
            fontSize: 32, fontWeight: FontWeight.bold),
            ),
          const SizedBox(
                height: 8,
              ),
            Input(
              label: '이메일을 입력해주세요',
              controller: controller.idController, 
            
                ),

            const SizedBox(
                height: 15,
              ),

            Input(
              label: '비밀번호를 입력해주세요',
              controller: controller.pwController, 
              ),      
            
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
              backgroundColor: MaterialStatePropertyAll(Colors.blue)),
              child: const Text('로그인'),
              onPressed: controller.login,
            ),
               SizedBox(
              height: 20,
            ),
             ElevatedButton(
            style: ButtonStyle(
            padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
            backgroundColor: MaterialStatePropertyAll(Colors.black)),
            child: Text('회원가입'),
            onPressed: () => Get.toNamed(SignUpPage.route),
       
       
            ),
          ],
        )),
      ),
    );
  }
}
