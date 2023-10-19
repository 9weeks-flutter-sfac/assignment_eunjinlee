import 'package:carousel_slider/carousel_slider.dart';
import 'package:day_7/data.dart';
import 'package:flutter/material.dart';

class CarouselPage extends StatelessWidget {
  const CarouselPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text('7일차 과제 2번'),
        ),
        body: Center(
          child: CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              autoPlayInterval: const Duration(milliseconds: 1000),
            ),
            items: imageUrl.map((e) {
              return Builder(
                builder: (BuildContext context) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(e),
                  );
                },
              );
            }).toList(),
          ),
        ));
  }
}
