import 'package:day_17/controller/auth_controller.dart';
import 'package:day_17/controller/login_controller.dart';
import 'package:day_17/controller/secret_controller.dart';
import 'package:day_17/controller/signup_controller.dart';
import 'package:day_17/controller/upload_controller.dart';
import 'package:day_17/util/pages.dart';
import 'package:day_17/view/page/login_page.dart';
import 'package:day_17/view/page/main_page.dart';
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
      initialBinding: BindingsBuilder(() {
        Get.lazyPut(() => LoginController());
        Get.lazyPut(() => SignUpController());
        Get.lazyPut(() => SecretController());
        Get.put(AuthController());
        Get.put(UploadController());
      }),
      getPages: AppPages.pages,
      initialRoute: LoginPage.route,
      home: const MainPage(),
    );
  }
}
