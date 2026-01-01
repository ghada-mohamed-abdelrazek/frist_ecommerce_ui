import 'package:flutter/material.dart';

class DealsItem extends StatelessWidget {
  const DealsItem ({
    super.key, required this.itemTitle, required this.itemPrice, required this.itemAmount, required this.itemImage
  });
  final String itemTitle;
  final String itemPrice;
  final int itemAmount;
  final String itemImage;

  @override
  Widget build(BuildContext context) {
final mainColor = const Color(0xffFF5E00);
final secColor = const Color(0xff804F1E);
    return Container(
      width: 172,
      height: 185,
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [BoxShadow(color: Color(0xffC4C4C4), spreadRadius:3 ,blurRadius:10 ,offset: Offset(0, 0))]
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(itemImage,
                width: 65,
                height: 75),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(itemTitle,
                  style: TextStyle(
                      color:Color(0xff6D3805),
                      fontSize: 15,
                      fontWeight: FontWeight.w700
                  ),
                ),
                Text("$itemAmount kg,priceg",
                    style: TextStyle(
                        color:Color(0xff929292),
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                    )
                ),

                Row(
                  children: [
                    Text(itemPrice,
                        style: TextStyle(
                            color:Color(0xffFF5E00),
                            fontSize: 24,
                            fontWeight: FontWeight.w700
                        )
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Color(0xff3AA14C),
                      child: Icon(Icons.add,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
