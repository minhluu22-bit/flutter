import 'package:flutter/material.dart';

import 'package:donut_shop/screens/home_page.dart';
import 'package:donut_shop/bottom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const BottomNavigation(),
    );
  }
}
