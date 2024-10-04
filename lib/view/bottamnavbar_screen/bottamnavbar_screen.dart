import 'package:flutter/material.dart';
import 'package:kfc_app/view/cart_screen/cart_screen.dart';
import 'package:kfc_app/view/home_screen/home_screen.dart';
import 'package:kfc_app/view/menu_screen/menu_screen.dart';
import 'package:kfc_app/view/more_screen/more_sceen.dart';
import 'package:kfc_app/view/sign_in_screen/sign_in_screen.dart';

class BottamnavbarScreen extends StatefulWidget {
  const BottamnavbarScreen({super.key});

  @override
  State<BottamnavbarScreen> createState() => _BottamnavbarScreenState();
}

class _BottamnavbarScreenState extends State<BottamnavbarScreen> {
  int selectedTab = 0;
  List screens = [
    HomeScreen(),
    MenuScreen(),
    SignInScreen(),
    CartScreen(),
    MoreSceen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedTab],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTab,
          onTap: (value) {
            selectedTab = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
                label: "Home",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.restaurant_menu_sharp,
                  size: 30,
                ),
                label: "Menu",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: "Sign in",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood),
                label: "Cart",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.format_list_bulleted_outlined),
                label: "More",
                backgroundColor: Colors.red),
          ]),
    );
  }
}
