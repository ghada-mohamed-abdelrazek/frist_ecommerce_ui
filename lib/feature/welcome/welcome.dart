import 'package:flutter/material.dart';
import 'package:fullter_project/feature/signin/login.dart';
import 'package:fullter_project/feature/signup/signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    final mainColor = Color(0xffFF5E00);
    final secColor = Color(0xff7F4E1D);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/welcome.png"),
              SizedBox(height: 14),
              Text("Welcome to our app",
                              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: secColor
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Shop online and get groceries delivered from stores to your home in as fast as 1 hour .",
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: secColor
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return Signup();
                        }));
                  },
                style: ElevatedButton.styleFrom(
                backgroundColor: mainColor,
                fixedSize: Size(350,50),
              ),
                  child: Text("Sign Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  ),
                SizedBox(height: 12),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return Login();
                        }));
                  },
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(width: 1, color: mainColor),
                fixedSize: Size(350,50),
              ),
                  child: Text("Sign In",
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  ),
            ],
          ),
          ) 
      )
    );
  }
}