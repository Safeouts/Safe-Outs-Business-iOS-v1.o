import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:safeoutsbusinessios/screens/default/ProfileScreen.dart';
import 'package:safeoutsbusinessios/screens/default/Safety.dart';
import 'package:safeoutsbusinessios/screens/default/homepage.dart';
import 'package:safeoutsbusinessios/screens/default/staff.dart';



class Home extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }

}

class HomeState extends State<Home>{

  int selectedIndex = 0;
  List<Widget> listWidgets = [Homepage(),Safety(),Staff(),Profile()];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return Scaffold(
      body: listWidgets[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle),
              title: Text("Staff")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user),
              title: Text("Safety")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text("Profile")
          ),
        ],
        unselectedItemColor: Colors.black38,
        selectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        selectedLabelStyle: TextStyle(color: Colors.black38),
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }

  void onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }

}