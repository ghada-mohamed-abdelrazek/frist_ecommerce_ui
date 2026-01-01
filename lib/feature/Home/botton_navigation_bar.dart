import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fullter_project/core/resources/app_images.dart';
import 'package:fullter_project/feature/Home/cart/cart.dart';
import 'package:fullter_project/feature/Home/categories/categories.dart';
import 'package:fullter_project/feature/Home/homeScreen/home.dart';
import 'package:fullter_project/feature/Home/person/profile.dart';

import 'orders/view.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNav();
}

class _HomeNav extends State<HomeNav> {
    int _selectedIndex = 0;
   List<Widget> screens = [
     HomeScreen(),
     Categories(),
     Cart(),
     OrderScreen(),
     Profile()

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: screens.elementAt(_selectedIndex)),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border.all(color:Color(0xffE9E9E9),width: 1),
          borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
        ),

        child: ClipRRect(
          borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
          child: BottomNavigationBar(
            backgroundColor:Colors.white,
            currentIndex: _selectedIndex,
            selectedItemColor: const Color(0xffFF5E00),
            selectedFontSize: 16,
            unselectedItemColor: const Color(0xff804F1E),
            unselectedFontSize: 14,
            type:BottomNavigationBarType.fixed,
            elevation: 0,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.home, colorFilter: ColorFilter.mode( _selectedIndex ==0? const Color(0xffFF5E00):const Color(0xff804F1E), BlendMode.srcIn)), label: 'Home'),
              BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.search,
                  colorFilter: ColorFilter.mode( _selectedIndex ==1? const Color(0xffFF5E00):const Color(0xff804F1E),
                      BlendMode.srcIn))
                  , label: 'Explore'),
              BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.cart,
                  colorFilter: ColorFilter.mode( _selectedIndex == 2 ? const Color(0xffFF5E00):const Color(0xff804F1E),
                      BlendMode.srcIn)), label: 'Cart'),
              BottomNavigationBarItem(icon:Icon(Icons.receipt_long) , label: 'Order'),
              BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.person,
                  colorFilter: ColorFilter.mode( _selectedIndex ==4? const Color(0xffFF5E00):const Color(0xff804F1E),
                      BlendMode.srcIn)), label: 'Profile'),
            ],

          
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}