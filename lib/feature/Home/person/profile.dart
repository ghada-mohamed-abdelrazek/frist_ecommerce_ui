import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fullter_project/core/resources/app_images.dart';
import 'package:fullter_project/widgets/switch_button.dart';

import '../../signin/login.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final mainColor = Color(0xffFF5E00);
    final secColor = Color(0xff804F1E);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: SizedBox.shrink(),
          centerTitle: true,
          title: Text(
            "Profile",
            style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: mainColor
            ),
            ),
  ),
  body: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Row(
        children: [
          SizedBox(height: 20),
          SvgPicture.asset(AppImages.person),
          SizedBox(width: 20),
          Text("Edit Profile",
          style: TextStyle(
            color: secColor,
            fontSize: 18,
            fontWeight: FontWeight.w700
          ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color:secColor,
          )
          ],
        ),
        SizedBox(height: 24),
        Row(
        children: [
          SvgPicture.asset(AppImages.key),
          SizedBox(width: 20),
          Text("Change Password",
          style: TextStyle(
            color: secColor,
            fontSize: 18,
            fontWeight: FontWeight.w700
          ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color:secColor,
          )
          ],
        ),
        SizedBox(height: 24),
        Row(
        children: [
          SvgPicture.asset(AppImages.card),
          SizedBox(width: 20),
          Text("My Cards",
          style: TextStyle(
            color: secColor,
            fontSize: 18,
            fontWeight: FontWeight.w700
          ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color:secColor,
          )
          ],
        ),
        SizedBox(height: 24),
        Row(
        children: [
          Text("App Settings",
          style: TextStyle(
            color: mainColor,
            fontSize: 22,
            fontWeight: FontWeight.w700
          ),
          ),
          ],
        ),
        SizedBox(height: 24),
        Row(
        children: [
          SvgPicture.asset(AppImages.bell),
          SizedBox(width: 20),
          Text("Notifications",
          style: TextStyle(
            color: secColor,
            fontSize: 18,
            fontWeight: FontWeight.w700
          ),
          ),
          Spacer(),
          SwitchButton()
          ],
        ),
        SizedBox(height: 24),
        Row(
        children: [
          SvgPicture.asset(AppImages.trans),
          SizedBox(width: 20),
          Text("Language",
          style: TextStyle(
            color: secColor,
            fontSize: 18,
            fontWeight: FontWeight.w700
          ),
          ),
          Spacer(),
          Text("English",
          style: TextStyle(
            color: secColor,
            fontSize: 16,
            fontWeight: FontWeight.w400
          ),
        ),
        SizedBox(width: 20),
          Icon(
            Icons.arrow_forward_ios,
            color:secColor,
          )
          ],
        ),
        SizedBox(height: 24),
        GestureDetector(
          onTap:(){
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context){
                  return Login();
                }));
          },
          child: Row(
          children: [
            SvgPicture.asset(AppImages.logout),
            SizedBox(width: 20),
            Text("Logout",
            style: TextStyle(
              color: secColor,
              fontSize: 18,
              fontWeight: FontWeight.w700
            ),
            ),
            ],
          ),
        ),
      ],
      ),
    ),

    );
  }
}

