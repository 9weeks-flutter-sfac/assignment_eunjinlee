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
      body: SafeArea(
        child: Scaffold(
          body: Center(
            child:Column(
              children: [
                SizedBox(height: 150,),
                _buildRichText(),
                _imgage(),
                Padding(padding:EdgeInsets.symmetric(vertical: 8.0),
                ),
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}
          Widget buildRichText () {
          return RichText(
          textAlign:   TextAlign.center,
          text:TextSpan(children: TextSpan("오늘의 하루는\n어땠나요?",
          style: TextStyle(color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,),),),
          
          Container(
            child: Center(
            child: Text('우울함',style:TextStyle(Colors.white, fontSize:30),
              ),
            ),
           decoration: BoxDecoration(color: Colors.orange,
           border: Border.all(),
           borderRadius: BorderRadius.circular(24),
           gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors:[ Colors.orange,Colors.yellowAccent])),

           )
          );
  

  }


