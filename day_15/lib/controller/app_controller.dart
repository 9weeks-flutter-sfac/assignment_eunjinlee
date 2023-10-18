import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class AppController extends GetxController{
RxInt coin = RxInt(0);

  @override
  void onInit() {
  super.onInit();//getController 가 초기화될 떄
  
  ever (coin, (_){
  if(coin %10 ==0)
  if (coin >1)
  Get.snackbar("획득", "${coin.value}개 획득");
  });

  //_의미없는 값 //once는 최초로 바꿨을떄만 실행 //onInit 안에 넣어야함// 왜필요한가? 데이터가 바꿀 때마다 새로운 페이지로 이동(로그인)
   Timer.periodic(Duration(milliseconds: 700),(Timer timer) {
   coin.value++;
  
   
  print('Current Coint: ${coin.value}');
  }
   );
  //ever(감시대상, 바뀌면할일);
  print("현재 보유한 코인:");

  }
 
}
