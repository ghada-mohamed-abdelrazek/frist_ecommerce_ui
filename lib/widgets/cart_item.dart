import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fullter_project/core/resources/app_images.dart';




class CartItem extends StatefulWidget {
  const CartItem({
  super.key,
  required this.title,
  required this.price,
  required this.quantity,
  required this.image,
  });
  final String title;
  final String price;
  final int quantity;
  final String image;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 1;
  @override
  void initState() {
  quantity = widget.quantity;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final mainColor = const Color(0xffFF5E00);
    final secColor = const Color(0xff804F1E);
    return Column(

      children: [
        Dismissible(
          key: UniqueKey(),
          background: Container(

            decoration: BoxDecoration(
              color:Color(0xffA42B32),

            ),
            child:Align(
              alignment: AlignmentGeometry.directional(0.9, 0),
              child: SvgPicture.asset(AppImages.delete),
            ),
          ) ,

          child: Column(
            children: [
              ListTile(
                leading:  Image.asset(
                  widget.image,
                  fit: BoxFit.contain,
                  width: 61,
                  height: 61,

                ),
                title: Text(
                  widget.title,
                  style: TextStyle(
                    color: secColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.zero,
                        height:30 ,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xffF4F4F4),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child:Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          spacing: 14,
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  // if(quantity == 0){
                                  //   return;
                                  // }else{
                                  //   quantity --;
                                  // };
                                  quantity > 1 ? quantity -- :  quantity;
                                });
                              },
                              child: CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.remove,
                                    color:secColor
                                ),
                              ),
                            ),
                            Text(
                              '$quantity',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: secColor
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  quantity++;
                                });
                              },
                              child: CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.add,
                                    color:secColor
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                    Spacer(),
                    Text(
                      widget.price,
                      style: TextStyle(
                        color: secColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),

              ),
              Divider(color: Colors.grey.shade200),
            ],
          ),
        ),
      ],
    );
  }
}

