import 'package:flutter/material.dart';
import 'package:kfc_app/view/bottamnavbar_screen/bottamnavbar_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottamnavbarScreen(),
    );
  }
}
