import 'package:assignment2/OptionCard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List myMenu = [];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,

        floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          myMenu= [];
          setState(() {});
        },
        label: Text('초기화하기'),
        ),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text('분식왕 은진이 주문하기'),
        ),
        body: Column(
            children: [
              Text('주문 리스트',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Text(myMenu.toString()),
              SizedBox(
                height: 8,
              ),
              Text(
                '음식',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
             
              Expanded(
                child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
               ),
                children: [
                  InkWell(
                    onTap: (){
                    myMenu.add('떡볶이');
                    setState(() {});
                    },
                    child: OptionCard(
                    foodName:'떡볶이',
                    imgUrl: 'assets/option_bokki.png',
                  ),
                  ),
                  InkWell(
                    onTap: (){
                    myMenu.add('맥주');
                    setState(() {});
                    },
                  child:OptionCard(
                    foodName:'맥주',
                    imgUrl: 'assets/option_beer.png',
                  ),
                  ),
                   InkWell(
                    onTap: (){
                    myMenu.add('김밥');
                    setState(() {});
                    },
                    child: OptionCard(
                    foodName:'김밥',
                    imgUrl: 'assets/option_kimbap.png',
                  ),
                   ),
                   InkWell(
                    onTap: (){
                    myMenu.add('오므라이스');
                    setState(() {});
                    },
                    child:OptionCard(
                    foodName:'오므라이스',
                    imgUrl: 'assets/option_omurice.png',
                  ),
                   ),
                  InkWell(
                    onTap: (){
                    myMenu.add('돈까스');
                    setState(() {});
                    },
                  child: OptionCard(
                    foodName:'돈까스',
                    imgUrl: 'assets/option_pork_cutlets.png',
                  ),
                  ),
                  InkWell(
                    onTap: (){
                    myMenu.add('라면');
                    setState(() {});
                    },
                  child: OptionCard(
                    foodName: '라면',
                    imgUrl: 'assets/option_ramen.png',
                  ),
                  ),
                InkWell(
                    onTap: (){
                    myMenu.add('우동');
                    setState(() {});
                    },
                  child: OptionCard(
                    foodName:'우동',
                    imgUrl: 'assets/option_udon.png',
                  ),
    
               ),
                ],
            ),
              ),
            ],
        ),),

    );
 
  }
}