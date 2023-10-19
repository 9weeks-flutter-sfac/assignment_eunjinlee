import 'package:day_10_changed/pages/author_page.dart';
import 'package:day_10_changed/pages/secret_page.dart';
import 'package:flutter/material.dart';



class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.blueAccent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
           const CircleAvatar(
            radius: 56,
            backgroundColor: Colors.white38,
            backgroundImage: AssetImage('assets/images/back.png'),
          ),
          const SizedBox(
            height: 8, 
          ),
          Text("비밀듣는 수달이", 
          style: TextStyle(color: Colors.white,fontSize: 34),
          ),
          ListTile(
            tileColor: Colors.white,
            title: const Text('비밀보기'),
            subtitle: Text('놀러가기'),
            onTap: (){
              Navigator.push(
              context, 
              MaterialPageRoute(
              builder: (context) =>SecretPage()
              ),
              );
            },
            trailing: CircleAvatar(
              backgroundColor: Colors.white38,
            backgroundImage: AssetImage('assets/images/back.png'),
            ),
          ),
            SizedBox(
            height: 36 ,),
            ListTile(
            tileColor: Colors.white,
            title: const Text('작성자들보기'),
            subtitle: Text('놀러가기'),
            onTap: (){
              Navigator.push(
              context, 
              MaterialPageRoute(
              builder: (context) =>AuthorPage()
              ),
              );
            },
            trailing: CircleAvatar(
              backgroundColor: Colors.white38,
            backgroundImage: AssetImage('assets/images/back.png'),
            ),
            ),
            SizedBox(
            height: 24, ),
            ListTile(
            tileColor: Colors.white,
            title: const Text('비밀남기기'),
            subtitle: Text('놀러가기'),
            onTap: (){
              Navigator.push(
              context, 
              MaterialPageRoute(
              builder: (context) =>AuthorPage()
              ),
              );
            },
            trailing: CircleAvatar(
              backgroundColor: Colors.white38,
            backgroundImage: AssetImage('assets/images/back.png'),
          ),
          ),
          ],
          ), 

          
           
      
    ),
        ),
      ),
    );
  }
}
