import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottomnav_pages/HomePage.dart';
import 'bottomnav_pages/MessagePage.dart';
import 'bottomnav_pages/ProfilePage.dart';
import 'bottomnav_pages/ReelsPage.dart';
import 'bottomnav_pages/SearchPage.dart';

class Instadashbord extends StatefulWidget{
  const Instadashbord({super.key});
  State<Instadashbord> createState()=> _Instadashbord();
}

class _Instadashbord extends State<Instadashbord> {
  int selectedidx=0;

  final List<Widget> _pages=[
     HomePage(),
     ReelsPage(),
    MessagePage(),
    SearchPage(),
     ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: _pages[selectedidx],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedidx,
          onTap: (index){
          setState(() {
            selectedidx=index;
          });
          },
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.video_call),label: 'Reels'),
            BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Message'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),

          ]),
    );
  }
}