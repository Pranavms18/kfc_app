import 'package:flutter/material.dart';
import 'package:kfc_app/view/home_screen/home_screen.dart';

class BottamnavbarScreen extends StatefulWidget {
  const BottamnavbarScreen({super.key});

  @override
  State<BottamnavbarScreen> createState() => _BottamnavbarScreenState();
}

class _BottamnavbarScreenState extends State<BottamnavbarScreen> {
  int selectedTab = 0;
  List screens = [
    HomeScreen(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.black,
    ),
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
          selectedItemColor: Colors.black,
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
                  Icons.person_pin,
                  size: 30,
                ),
                label: "Account",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood),
                label: "Menu",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood),
                label: "Menu",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood),
                label: "Menu",
                backgroundColor: Colors.red),
          ]),
    );
  }
}
