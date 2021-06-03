import 'package:flutter/material.dart';
import 'package:safeoutsbusinessios/profile/SettingsPage.dart';
class StaffHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()),
            ),
            child: Image.asset(
              "assets/images/logo.png",
            ),
          ),
        ),
        title: Text(''),
      ),
      body:Center(
       child: Text("Yet to Implement Staff Home",
         style: TextStyle(
             fontSize: 20.0
         ),
       ),
      )
    );
  }

}