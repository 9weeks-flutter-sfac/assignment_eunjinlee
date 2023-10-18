// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:day_3/MusicTile.dart';
import 'package:flutter/material.dart';
import 'dart:ui';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: ThemeData.from(
      colorScheme: const ColorScheme.dark(),
      ),
      home: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.white10,
            height: 1,
          ),
          ),
          leading: Icon(Icons.navigate_before),
          shape: Border(bottom: BorderSide(color: Colors.white24, width:1),
        
          ),
          title: Text('아워리스트'),
          elevation:0,
          centerTitle: false,
          actions: [Padding(
              padding:EdgeInsets.all(8.0),
              child: Icon(Icons.airplay),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            child:Icon(Icons.search),
            ),
          ],
        ),
        body: ListView(
          children: [MusicTile(
              title: 'Honesty',
              artist: 'Pink Sweat\$',
              Duration: '3:09', 
              albumImg: 'assets/music_honesty.png',
            ),MusicTile(
              title: 'I Wish I Missed My Ex',
              artist: '마할리아 버크마',
              Duration: '3:24', 
              albumImg: 'assets/music_i_wish_i_missed_my_ex.png',
            ),MusicTile(
              title: 'Plastic Plants ',
              artist: '마할리아 버크마',
              Duration: '3:20', 
              albumImg: 'assets/music_plastic_plants.png',
            ),MusicTile(
              title: 'Sucker for you',
              artist: '맷 테리',
              Duration: '3:24', 
              albumImg: 'assets/music_good_day.png',
            ),MusicTile(
              title: 'Summer is for falling in love',
              artist: 'Sarah Kang & Eye Love Brandon',
              Duration: '3:00', 
              albumImg: 'assets/music_summer_is_for_falling_in_love.png',
            ),MusicTile(
              title: 'These days(feat. Jess Glynne, Macklemore & Dan Caplen)',
              artist: 'Rudimental',
              Duration: '3:00', 
              albumImg: 'assets/music_these_days.png',
            ), MusicTile(
              title: 'You Make Me',
              artist: 'DAY6',
              Duration: '3:02', 
              albumImg: 'assets/music_you_make_me.png',
            ),MusicTile(
              title: 'Zombie Pop',
              artist: 'DRP IAN',
              Duration: '3:02', 
              albumImg: 'assets/music_zombie_pop.png',
            ),
          ],
            ),
            
        bottomNavigationBar:BottomNavigationBar(
          currentIndex: 2,
          fixedColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: '홈'
              ),
             BottomNavigationBarItem(
              icon:Icon(Icons.explore),
              label: '둘러보기'
              ),  
              BottomNavigationBarItem(
              icon:Icon(Icons.library_music),
              label: '보관함'
              ),  
              
            
          ],
        ),
        bottomSheet: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 64,
              color: Colors.white12,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset('assets/music_you_make_me.png'),
                ),
                title: Text('You make Me'),
                subtitle: Text('DAY6'),
                trailing: Row(
                  mainAxisSize:MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.play_arrow),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.skip_next),
                    ),
                  ]),
              ),
            ),
          Container(
            height: 1,
            alignment: Alignment.centerLeft,
            child: Container(
              width: 12,
              color: Colors.white,
            ),
            ),
        
          ],
        ),
      
      
      
      ),
    );
  }
}