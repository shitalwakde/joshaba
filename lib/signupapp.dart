import 'package:flutter/material.dart';
import 'package:joshaba/signup_screen.dart';
import 'login_screen.dart';

class SignUpApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'LogIn',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Joshaba', style: TextStyle(color: Colors.blueAccent, fontSize: 27.0, fontWeight: FontWeight.bold)),
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        resizeToAvoidBottomInset: false,
        body: SignUpScreen(),
      ),
    );
  }
}