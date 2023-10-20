import 'package:day_17/view/page/secret_page.dart';
import 'package:day_17/view/page/setting_page.dart';
import 'package:day_17/view/page/upload_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget{
  const MainPage({super.key});
  static const route = '/main';
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/back.jpg'),
          fit: BoxFit.cover,
        ),
      ),
        child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('말해줘 사실을 말해줘~',style: TextStyle(color: Color.fromARGB(255, 43, 22, 76),fontSize: 34),
          ),
          ListTile(title:const Text('비밀보기',style: TextStyle(color: Color.fromARGB(255, 43, 22, 76),fontSize: 20),
          ),
          onTap: () => Get.toNamed(SecretPage.route),
          ),
          
          ListTile(
            title: const Text('비밀올리기',style: TextStyle(color: Color.fromARGB(255, 43, 22, 76),fontSize: 20),
          ),
            onTap: () => Get.toNamed(UploadPage.route
          ),),
           ListTile(
            title: const Text('앱설정',style: TextStyle(color: Color.fromARGB(255, 43, 22, 76),fontSize: 20),
          ),
            onTap: () => Get.toNamed(SettingPage.route),
           ),
        
        ],
          ),
    ),
      
    ),
   );
  
  
  }
  
}