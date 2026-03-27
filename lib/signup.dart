import 'package:flutter/material.dart';

class SignupApp extends StatefulWidget {
  const SignupApp({super.key});

  @override
  State<SignupApp> createState() => SignupAppState();
}

class SignupAppState extends State<SignupApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Signup Page"),
        
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
              child: Image.asset("assets/images/icon.png",height: 200.0, width: 200.0,),
            ),
          ],
        ),
      ),
    );
  }
}