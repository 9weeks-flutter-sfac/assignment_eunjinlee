
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RichText(
            text: const TextSpan(
              text: '안녕하세요!\n간단하게 제',
              style: TextStyle(fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                text: '소개',
                style: TextStyle(
                color:(Colors.blue),
                fontSize: 20,
            ),
        ),        
                TextSpan(text: '를 해보겠습니다\n\n\n 먼저 저의 MBTI는 이고'),
                TextSpan(
                  text:  'INFJ',
                  style: TextStyle(
                    color:(Colors. red), 
                    fontSize:20,
                  ),              
                ),
                TextSpan(text: '이고\n직업은'),
                TextSpan(text: '개발자',
                style: TextStyle(
                color:(Colors. green), 
                fontSize:20,
                   ),
                    ),
              
                TextSpan(text: '입니다.\n\n\n'),
                TextSpan(text: '꿈',
                style: TextStyle(
                color:(Colors. yellow), 
                fontSize:20,
           ),
         ),
                TextSpan(text: '은 없고요\n 그냥 놀고 싶습니다\n\n\n',
                style: TextStyle(
                color:(Colors. black), 
                fontSize:15,
          ),
         ),
                TextSpan(text: '감사합니다',
                style: TextStyle(
                color:(Colors. pink), 
                fontSize:15,
           ),
        ),
              ]
          ),
        ),
      ),
      
  }
}
