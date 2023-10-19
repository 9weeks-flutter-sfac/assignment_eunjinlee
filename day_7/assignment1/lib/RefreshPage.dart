import 'dart:math';
import 'package:day_7/data.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RefreshPage extends StatefulWidget {
  const RefreshPage({super.key});

  @override
  State<RefreshPage> createState() => _RefreshPageState();
}

class _RefreshPageState extends State<RefreshPage> {
  int index = 0;

  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text("7일차 과제 1번"),
        ),
        body: SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        header: WaterDropHeader(),
        controller: refreshController,
          onRefresh: () async {
            await Future.delayed(const Duration(milliseconds: 1000));

            setState(() {
              index = Random().nextInt(imageUrl.length);
            });
            refreshController.refreshCompleted();
          },
          child: Center(
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                
              ),
              child: Image.network(imageUrl[index]),
            ),
          ),
        ),
      ),
    );
  }
}
