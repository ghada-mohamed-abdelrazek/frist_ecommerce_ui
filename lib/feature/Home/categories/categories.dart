import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key,this.showBackButton = false});
  final bool showBackButton;
  @override
  Widget build(BuildContext context) {
        final mainColor = Color(0xffFF5E00);
    final secColor = Color(0xff6D3805);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: showBackButton?GestureDetector(
            onTap: () => Navigator.of(context).pop(context),
            child: Icon(Icons.arrow_back_ios,color:mainColor)):SizedBox.shrink(),
        centerTitle: true,
          title: Text(
            "Categories",
            style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: mainColor
            ),
            ),

  ),
  body: SingleChildScrollView(
     child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.search,
                    color:secColor),
                    fillColor: Color(0xffF3F3F3),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:mainColor ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:Colors.transparent)
                    ),
                    hintText: "Search",
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Color(0xffEDD0FF),
                          child: Image.asset("assets/images/fruits.png",
                          width: 96,
                          height: 86),
                        ),
                        Text("Fruits",
                        style: TextStyle(
                          color:secColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        )
                      ]
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffFFD9BA),
                          radius: 50,
                          child: Image.asset("assets/images/vegtables.png",
                          width: 66,
                          height: 83,),
                        ),
                        Text("Vegetables",
                        style: TextStyle(
                          color:secColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        )
                      ]
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffFACCCC),
                          radius: 50,
                          child: Image.asset("assets/images/meat.png",
                          width: 74,
                          height: 53.47,
                          ),
                        ),
                        Text("Meat",
                        style: TextStyle(
                          color:secColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        )
                      ]
                    ),
                  ],
                ),
                SizedBox(height: 20),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffFBC1BD),
                          radius: 50,
                          child: Image.asset("assets/images/fish.png",
                          width: 65,
                          height: 51.08,),
                        ),
                        Text("Fish",
                        style: TextStyle(
                          color:secColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        )
                      ]
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffFFE299),
                          radius: 50,
                          child: Image.asset("assets/images/seafood.png",
                          width: 55.24,
                          height: 73),
                        ),
                        Text("Seafood",
                        style: TextStyle(
                          color:secColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        )
                      ]
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffD3E5C4),
                          radius: 50,
                          child: Image.asset("assets/images/juice.png",
                          width: 43,
                          height: 67,
                          ),
                        ),
                        Text("Juice",
                        style: TextStyle(
                          color:secColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        )
                      ]
                    ),
                  ],
                ),
          SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffDAF2FC),
                          radius: 50,
                          child: Image.asset("assets/images/milk.png",
                          width: 60,
                          height: 54.64,),
                        ),
                        Text("Eggs & Milk",
                        style: TextStyle(
                          color:secColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        )
                      ]
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffFFDEF6),
                          radius: 50,
                          child: Image.asset("assets/images/iceCream.png",
                          width: 55.24,
                          height: 73),
                        ),
                        Text("Ice Cream",
                        style: TextStyle(
                          color:secColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        )
                      ]
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffFECA97),
                          radius: 50,
                          child: Image.asset("assets/images/cake.png",
                          width: 59.9,
                          height: 59,
                          ),
                        ),
                        Text("Cake",
                        style: TextStyle(
                          color:secColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        )
                      ]
                    ),
                  ],
                ),
          SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffFFC0C0),
                          radius: 50,
                          child: Image.asset("assets/images/Vector (5).png",
                          width: 22.83,
                          height: 70.25,),
                        ),
                        Text("Beverages",
                        style: TextStyle(
                          color:secColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        )
                      ]
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffD6FAE9),
                          radius: 50,
                          child: Image.asset("assets/images/wash.png",
                          width: 29.45,
                          height: 55.8),
                        ),
                        Text("Cleaning",
                        style: TextStyle(
                          color:secColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        )
                      ]
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffB79BF3),
                          radius: 50,
                          child: Image.asset("assets/images/bakery.png",
                          width: 55,
                          height: 75,
                          ),
                        ),
                        Text("Bakery",
                        style: TextStyle(
                          color:secColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        )
                      ]
                    ),
                  ],
                ),
          SizedBox(height: 20),
        ],
      ),
      
      ),

      )
);

  }
}