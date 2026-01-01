import 'package:flutter/material.dart';
import 'package:fullter_project/feature/welcome/welcome.dart';


class Splash extends StatefulWidget {
  Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
  Future.delayed(
     Duration(
       seconds: 5
     )).then((value) {
    if(mounted){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context){
            return Welcome();
          }));
    }
  });
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/splash.png")
            ],
          ),
        ),
      ),
    );
  }
}


