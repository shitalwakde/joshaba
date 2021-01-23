import 'package:flutter/material.dart';
import 'package:joshaba/app.dart';
import 'package:joshaba/bcommerce/src/Constant/Constant.dart';
import 'package:joshaba/bcommerce/src/splash/splash_screens.dart';
import 'package:joshaba/screen/home_screen.dart';
import 'package:joshaba/themes/Theme.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter tik tok',
      theme: MyTheme(),
      routes: <String,WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context)=> AnimatedSplashScreen(),
        HOME_SCREEN: (BuildContext context)=> HomeScreen(),
        LOGIN_SCREEN: (BuildContext context)=> App(),
      },
      home: AnimatedSplashScreen(),
      //home: HomeScreen(),
    );
  }
}

