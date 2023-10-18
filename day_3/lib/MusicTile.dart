import 'package:flutter/material.dart';
import 'dart:ui';

class MusicTile extends StatelessWidget {
  const MusicTile({super.key, required this.title, required this.artist, required this.Duration, required this.albumImg});
  final String title;
  final String artist;
  final String Duration;
  final String albumImg;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [ 
        ListTile(leading: ClipRRect(
        borderRadius:BorderRadius.circular(4),
        child: Image.asset(albumImg),
          ),
          title: Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: [
              Icon(Icons.check_circle,size:18),
              SizedBox(
                width: 4,
              ),
              Flexible(child: 
              Text(artist, 
            maxLines: 1, 
            overflow: TextOverflow.ellipsis,
            ),
          ),
          
          SizedBox(
          width: 4,
          ),

          Text('·'),
          SizedBox(
          width: 4,
          ),

          Text(Duration),
          
        
          ],
          ),
            trailing: Icon(Icons.more_vert),
            ),
          ]
    );
    

  } 
}