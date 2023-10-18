import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:project_1/controller/app_controller.dart';
import 'package:project_1/info_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppController());
    return GetMaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.bitcoin,
                size: 96.0,
                color: Colors.yellow.shade700,
              ),
              Obx(
                () => Text(
                  'Current coin: ${controller.coin.value}',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => InfoPage());
                },
                child: Text('상점으로 이동'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
