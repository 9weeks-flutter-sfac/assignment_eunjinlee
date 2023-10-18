import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/controller/app_controller.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<AppController>(); //한번 put된 컨트롤러를 찾아서 컨트롤할 수 있음
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                '현재 코인: ${controller.coin.value}',
              ),
            ),
            TextButton(
                onPressed: () {
                  controller.coin.value = 0;
                },
                child: Text("코인버리기")),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text('뒤로가기기'),
            ),
          ],
        ),
      ),
    );
  }
}
