import 'package:flutter/material.dart';
import 'package:fullter_project/widgets/custom_password_field.dart';

import '../../core/resources/app_field.dart';
import '../Home/botton_navigation_bar.dart';
import '../signin/login.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final mycolor = Color(0xffFF5E00);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:GestureDetector(
          onTap: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context){
                  return Login();
                }));
          },
          child:Icon(
            Icons.arrow_back_ios,
            color:mycolor
            ),
        ),
          centerTitle: true,
          elevation: 0,
          scrolledUnderElevation: 0,
          title: Text(
            "Sign Up",
            style: TextStyle(
            fontSize: 24,
            color: mycolor,
            ),
            ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Image.asset("assets/images/login.png"),
                ),
                SizedBox(height: 12),
                Text("Please Enter Your Information To Create an Account",
                style: TextStyle(
                fontSize: 18,
                color: Color(0xff6D3805)
                ),
                ),
                SizedBox(height: 12),
                AppField(hintText:"Name", endIcon: SizedBox()),
                SizedBox(height: 12),
                AppField(hintText:"Email", endIcon: SizedBox()),
                SizedBox(height: 12),
                CustomPasswordField(hint: "Password"),
                SizedBox(height: 12),
                CustomPasswordField(hint: "Confirm Password"),
                SizedBox(height: 14),
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context){
                              return HomeNav();
                            }));
                  },
                style: ElevatedButton.styleFrom(
                backgroundColor: mycolor,
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
                SizedBox(height: 14),
            ],
          ),
          ),
      ),
    );
  }
}