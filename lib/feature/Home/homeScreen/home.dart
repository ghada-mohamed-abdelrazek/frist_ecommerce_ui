import 'package:flutter/material.dart';
import 'package:fullter_project/core/resources/app_images.dart';
import 'package:fullter_project/widgets/categories_item.dart';
import 'package:fullter_project/widgets/deals_item.dart';

import '../categories/categories.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen ({super.key});
  final List<String> catName = ["Fruits","Vegtables","Meat","Fish","Sea food","Juice","Egg & Milk","Ice cream","Cake"];
  final List<Color> catColor = [Color(0xffEDD0FF),Color(0xffFFD9BA),Color(0xffFACCCC),Color(0xffFBC1BD),Color(0xffFFE299),Color(0xffD3E5C4),Color(0xffDAF2FC),Color(0xffFFDEF6),Color(0xffFECA97)];
  final List<String> catImgs = ["assets/images/fruits.png","assets/images/vegtables.png","assets/images/meat.png","assets/images/fish.png","assets/images/seafood.png","assets/images/juice.png","assets/images/milk.png","assets/images/iceCream.png","assets/images/cake.png"];
  final List<String> cardtitles = [
    "Red Apple",
    "Original Banana",
    "Avocado Bowl",
    "Salmon",
  ];

  final List<String> cardprices = [
    r"$4.99",
    r"$5.99",
    r"$24",
    r"$50",
  ];

  final List<int> cardquantities = [2, 2, 1, 2];

  final List<String> cardimages = [
    "assets/images/red _apple.png",
    "assets/images/banana.png",
    "assets/images/avocado.png",
    "assets/images/salmon.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.symmetric(vertical: 45,horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Image.asset(AppImages.banner,
         width: 350,
         height: 190,
         ),
        SizedBox(height: 20,),
        Row(
          children: [
            Text("Categories",
              style: TextStyle(
                color:Color(0xff6D3805),
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context){
                    return Categories(showBackButton: true,);
                  }));
                },
              child: Text("See All",
                style: TextStyle(
                  color:Color(0xffFF5E00),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
          SizedBox(height: 24,),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: catColor.length,
                itemBuilder: (context, index) {
                  return CategoriesItem(
                      catTitle:catName[index],
                      catImage:catImgs[index],
                      catColor:catColor[index]
                  );
                },
            ),
          ),

          Row(
            children: [
              Text("Popular Deals",
                style: TextStyle(
                  color:Color(0xff6D3805),
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacer(),
              Text("See All",
                style: TextStyle(
                  color:Color(0xffFF5E00),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 24,),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:cardimages.length ,
              itemBuilder: (context, index) {
                return DealsItem(
                    itemTitle: cardtitles[index],
                    itemPrice: cardprices[index],
                    itemAmount: cardquantities[index],
                    itemImage: cardimages[index]
                );
              },
            ),
          ),


        ],

      ),
    );
  }
}
