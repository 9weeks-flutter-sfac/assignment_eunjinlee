import 'package:day_17/controller/auth_controller.dart';
import 'package:day_17/controller/login_controller.dart';
import 'package:day_17/controller/secret_controller.dart';
import 'package:day_17/controller/signup_controller.dart';
import 'package:day_17/controller/upload_controller.dart';
import 'package:day_17/util/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SecretCat',
      theme: ThemeData(useMaterial3:true),
      getPages: AppPages.pages,
      initialBinding: BindingsBuilder(() {
        Get.put(AuthController());
        Get.lazyPut(() => LoginController());
        Get.put(() => SecretController(),permanent: true);
        Get.lazyPut(() => SignupController());
        Get.put(UploadController(), permanent: true);
      }),
     
      initialRoute: '/login',
      
      );
    
  }
}
