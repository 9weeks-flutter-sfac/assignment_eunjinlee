import 'package:day_10_changed/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Neo"),
      home: MainPage(),
      // body: Column(
           // crossAxisAlignment: CrossAxisAlignment.center,
           // mainAxisAlignment: MainAxisAlignment.center,
           //children: [
           // Text("안녕하세요"), 
         //  ],
          );
       
        
  }
    
}
