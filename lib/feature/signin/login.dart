import 'package:flutter/material.dart';
import 'package:fullter_project/core/resources/app_field.dart';
import 'package:fullter_project/feature/signup/signup.dart';
import 'package:fullter_project/widgets/custom_password_field.dart';

import '../Home/botton_navigation_bar.dart';
import '../Home/homeScreen/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final mycolor = Color(0xffFF5E00);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: SizedBox.shrink(),
          centerTitle: true,
          title: Text(
            "Sign In",
            style: TextStyle(
            fontSize: 24,
            color: mycolor,
            ),
            ),

      ),
      body:SingleChildScrollView(
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
                Text("Please Enter Your Email and Password to access your account",
                style: TextStyle(
                fontSize: 18,
                color: Color(0xff6D3805)
                ),
                ),
                SizedBox(height: 12),
              AppField(hintText:"Email", endIcon: SizedBox()),
                SizedBox(
                  height: 12,
                ),
                CustomPasswordField(hint: "Password"),
                SizedBox(height: 14),
                Text("Forgete Password",
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: mycolor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
                ),
                SizedBox(height: 12),
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
                  child: Text("Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  ),
                SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff6D3805)
                ),
                ),
                SizedBox(
                  width: 6,
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                      return Signup();
                    }));
                  },
                  child: Text("Sign Up" ,
                  style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: mycolor
                  ),
                  ),
                )
              ],
            ),
            ],
          ),
          ),
      ) ,
    );
  }
}

