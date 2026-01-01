import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  OrderItem({super.key, required this.orderNumber, required this.orderPrice,
  required this.orderStatus, required this.orderDate, this.isGreen=true});
final String orderNumber;
final String orderPrice;
final String orderStatus;
final String orderDate;
bool isGreen;
  @override
  Widget build(BuildContext context) {
        final mainColor = Color(0xffFF5E00);
    final secColor = Color(0xff804F1E);
    return  Column(
        children: [
                     Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: ListTile(
                                      leading: CircleAvatar(
                                        backgroundColor: mainColor,
                                        radius: 25,
                                      child: Icon(Icons.shopping_basket_sharp, color: Colors.white),
                                      ),
                                        title:Text("Order# $orderNumber",
                                        style: TextStyle(
                                          color: secColor,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                        
                                        )
                                        ),
                                        trailing: Text(orderPrice,
                                        style: TextStyle(
                                          color: mainColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700
                                        )
                                        ),
                                        subtitle: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(orderStatus,
                                            style: TextStyle(
                        color:isGreen?Color(0xff5EC401):Color(0xffF2110D),
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                                            )),
                                            Text(orderDate,
                                            style: TextStyle(
                        color: secColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                                            )
                                            )
                                          ],
                                        ),
                                    ),
                      ),
                      Divider(
                        height: 2,
                        color: Colors.grey.shade200,
                      )
        ],
      );

  }
}