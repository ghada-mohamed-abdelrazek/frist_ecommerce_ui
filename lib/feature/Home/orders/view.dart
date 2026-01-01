import 'package:flutter/material.dart';
import 'package:fullter_project/widgets/order_item.dart';

class OrderScreen extends StatelessWidget {
  OrderScreen({super.key});
  List<String> number = ["345","346","347"];
  List<String> price = [r"$700",r"$452",r"$281"];
  List<String> status = ["Delivered","Cancelled","Delivered"];
  List<String> date = [r"October 26,2014",r"October 14,2016",r"July 26,2017"];
  List<bool> color = [true,false,true];
  @override
  Widget build(BuildContext context) {
    final mainColor = Color(0xffFF5E00);
    final secColor = Color(0xff804F1E);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.white,
        appBar: AppBar(
          leading: SizedBox.shrink(),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text("Order",
          style: TextStyle(
            color: mainColor,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          )),
          bottom: TabBar(
            indicatorWeight:2,
            indicatorColor: mainColor,
            indicatorSize: TabBarIndicatorSize.label,
            dividerColor: Colors.grey.shade300,
            unselectedLabelStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: secColor,
            ),
            labelStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: mainColor,
            ),
            tabs:[
              Tab(text: 'Ongoing'),
              Tab(text: 'History')
              ],
            ),
        ),


        body: ListView.builder(
          itemCount: number.length,
          itemBuilder: (context, index) {
          return OrderItem(
            orderNumber: number[index],
            orderDate: date[index],
            orderPrice: price[index],
            orderStatus:status[index] ,
            isGreen:color[index] ,
          );
        },)
      ));
  }
}


