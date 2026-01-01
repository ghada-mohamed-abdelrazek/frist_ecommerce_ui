import 'package:flutter/material.dart';
import 'package:fullter_project/feature/Home/botton_navigation_bar.dart';

// import 'package:fullter_project/splash.dart';
import 'package:fullter_project/feature/signin/login.dart';
import 'package:fullter_project/feature/signup/signup.dart';
import 'package:fullter_project/feature/Home/person/profile.dart';


import 'package:fullter_project/feature/Home/cart/cart.dart';

import 'feature/splash/splash.dart';
import 'feature/welcome/welcome.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:Splash(),
      // home:Welcome(),
      // home:Login(),
      // home:Signup(),
      // home:Profile(),
      // home:Categories(),
      // home:OrderScreen(),
      // home:Cart(),
      // home:HomeNav(),

    );
}
}