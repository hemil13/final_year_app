import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NavigationMain extends StatefulWidget{

  @override
  NavigationApp createState() => NavigationApp();

}

class NavigationApp extends State<NavigationMain>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation Drawer"),
          backgroundColor: Colors.amber.shade100,
        ),
        drawer: Drawer(
          child: new ListView(
            children: [
              UserAccountsDrawerHeader(                
                currentAccountPicture: Icon(Icons.person),
                accountName: Text("John"), 
                accountEmail: Text("john@gmail.com")
              ),

              
              ListTile(
                title: Text("Home"),
                subtitle: Text("Go To Home"),
                leading: Icon(Icons.home),
                trailing: Icon(Icons.chevron_right_outlined),
                onTap: (){
                  printMessage("Home");
                  // print("Home");
                },
                onLongPress: () {
                  printLongMessage("Home long press");
                },
                hoverColor: Colors.amber.shade100,

              ),


              ListTile(
                title: Text("Orders"),
                trailing: Icon(Icons.chevron_right_outlined),
                leading: Icon(Icons.arrow_outward_rounded),
                onTap: (){
                  printMessage("Orders");
                  //print("Order");
                },
              ),


              ListTile(
                title: Text("Profile"),
                trailing: Icon(Icons.chevron_right_outlined),
                leading: Icon(Icons.person),
                onTap: (){
                  printMessage("Profile");
                  //print("Profile");
                },
              ),

              ListTile(
                title: Text("Settings"),
                trailing: Icon(Icons.chevron_right_outlined),
                leading: Icon(Icons.settings),
                onTap: (){
                  printMessage("Settings");
                  //print("Profile");
                },
              ),


              ListTile(
                title: Text("Logout"),
                trailing: Icon(Icons.chevron_right_outlined),
                leading: Icon(Icons.logout),
                onTap: (){
                  printMessage("Logout");
                  //print("Logout");
                },
              ),


            ],
          ),
        ),
      ),
    );
  }

  printMessage(var message){
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG
    );
  }

  printLongMessage(var message){
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG
    );
  }

}