import 'package:final_year_app/navigationDrawer.dart';
import 'package:final_year_app/signup.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: loginMain() ,
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class loginMain extends StatefulWidget {
  const loginMain({super.key});

  @override
  State<loginMain> createState() => loginMainState();
}

class loginMainState extends State<loginMain> {

  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  late String sEmail,sPassword;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Login Page"),
        
      ),
      body: Container(
        child: Form(
          key: formKey,
          child: Column(
            children: [


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                child: Image.asset("assets/images/icon.png",height: 200.0, width: 200.0,),
              ),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    labelText: "Email",
                    hintText: "Enter Email Id",
                  ),
                  onSaved: (value){
                    sEmail = value!;
                  },
                  validator: (value){
                    if (value!.isEmpty){
                      return "Email Id Required";
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  maxLength: 15,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    labelText: "Password",
                    hintText: "Enter Password",
                  ),
                  onSaved: (value){
                    sPassword = value!;
                  },
                  validator: (value){
                    if (value!.isEmpty){
                      return "Password Required";
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Container(
                  color: Colors.blue.shade300,
                  width: 200.0,
                  height: 40.0,
                  child: TextButton(
                    onPressed: (){
                      if(formKey.currentState!.validate()){
                        formKey.currentState!.save();
                        Fluttertoast.showToast(
                          msg: "Login Successful $sEmail, $sPassword",
                          toastLength: Toast.LENGTH_LONG,
                          timeInSecForIosWeb: 2,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0,
                          gravity: ToastGravity.BOTTOM,
                          );
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NavigationMain()));
                      }
                    }, 
                    child: Text("Login")
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Container(
                  color: Colors.blue.shade300,
                  width: 300.0,
                  height: 40.0,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>SignupApp()));
                    }, 
                    child: Text("Create An Account")
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}