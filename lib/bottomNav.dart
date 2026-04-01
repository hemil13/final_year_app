import 'package:final_year_app/call.dart';
import 'package:final_year_app/chat.dart';
import 'package:final_year_app/status.dart';
import 'package:flutter/material.dart';


class BottomDemo extends StatefulWidget{

  @override
  BottomState createState() => BottomState();

}

class BottomState extends State<BottomDemo>{

  var tabArray = [ChatApp(),StatusApp(),CallApp()];
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Navigation"),
          backgroundColor: Colors.amber.shade100,
        ),
        body: tabArray[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded),
              label: "Profile"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: "Logout"
            )
          ],
          currentIndex: selectedIndex,
          onTap: (index){
            setBottomIndex(index);
          },
        ),
      ),
    );
  }

  setBottomIndex(index){
    setState(() {
      print(index);
      selectedIndex = index;
    });
  }

}