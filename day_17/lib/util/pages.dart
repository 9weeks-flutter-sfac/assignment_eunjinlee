import 'package:day_17/view/page/login_page.dart';
import 'package:day_17/view/page/main_page.dart';
import 'package:day_17/view/page/secret_page.dart';
import 'package:day_17/view/page/setting_page.dart';
import 'package:day_17/view/page/signup_page.dart';
import 'package:day_17/view/page/upload_page.dart';
import 'package:get/get.dart';

class AppPages{
  static final pages = [
    GetPage(name: MainPage.route, page: () => const MainPage()),
    GetPage(name: '/login', page: () => const LoginPage()),      
    GetPage(name: SignUpPage.route, page: () =>const SignUpPage()), 
    GetPage(name: SettingPage.route, page: () => const SettingPage()), 
    GetPage(name: SecretPage.route, page: () => const SecretPage()),  
    GetPage(name: UploadPage.route, page: () => const UploadPage()), 

  ];
}