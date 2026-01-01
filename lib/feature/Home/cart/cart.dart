import 'package:flutter/material.dart';
import 'package:fullter_project/widgets/cart_item.dart';

class Cart extends StatelessWidget {
  Cart({super.key});
  final List<String> titles = [
    "Red Apple",
    "Original Banana",
    "Avocado Bowl",
    "Salmon",

  ];

  final List<String> prices = [
    r"$4.99 kg",
    r"$5.99 kg",
    r"$24 st",
    r"$50 kg",

  ];

  final List<int> quantities = [2, 2, 1, 2];

  final List<String> images = [
    "assets/images/red _apple.png",
    "assets/images/banana.png",
    "assets/images/avocado.png",
    "assets/images/salmon.png",

  ];

  @override
  Widget build(BuildContext context) {
    final mainColor = const Color(0xffFF5E00);

    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: SizedBox.shrink(),
          centerTitle: true,
          title: Text(
            "Cart",
            style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: mainColor,
            ),
            ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: titles.length,
              itemBuilder: (context, index) {
                return CartItem(
                  title: titles[index],
                  price: prices[index],
                  quantity: quantities[index],
                  image: images[index],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: mainColor,
                fixedSize: Size(350,50),
              ),
              child: Text("CheckOut",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),


    );
  }
}
