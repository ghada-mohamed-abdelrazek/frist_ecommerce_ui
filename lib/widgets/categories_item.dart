import 'package:flutter/material.dart';
class CategoriesItem  extends StatelessWidget {
  const CategoriesItem ({super.key, required this.catTitle, required this.catImage, required this.catColor
  });
  final String catTitle;
  final String catImage;
  final Color catColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 100,
      height: 150,
      child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: catColor,
              child: Image.asset(catImage,
                  width: 60,
                  height: 60),
            ),
            Text("Fruits",
              style: TextStyle(
                color:Color(0xff6D3805),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),

          ]
      ),
    );

  }
}
