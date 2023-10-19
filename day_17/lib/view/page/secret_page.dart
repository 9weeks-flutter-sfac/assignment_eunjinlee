import 'package:day_17/controller/secret_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SecretPage extends GetView<SecretController>{
  const SecretPage({super.key});
  static const route = '/secret';
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Obx(
      ()=> PageView.builder(
      itemCount: controller.secrets.length,
      itemBuilder: (context, index) =>Center(
        child: Text(controller.secrets[index].secret)), 
      ) ,
      
    )
   );
  
  }
  
}