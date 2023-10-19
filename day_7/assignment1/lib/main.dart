import 'package:animate_do/animate_do.dart';
import 'package:day_7/CarouselPage.dart';
import 'package:day_7/RefreshPage.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: PageView(
      children: const [
          RefreshPage(),
          CarouselPage(),
        ],
      )),
    );
  }
}
