import 'package:donut_shop/constant.dart';
import 'package:donut_shop/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:donut_shop/screens/cart_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> listBottom = const [
      BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
      BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined), label: 'My Cart'),
      BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_border_outlined), label: 'Mark'),
      BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_rounded), label: 'Favorite'),
    ];

    getPage() {
      switch (_selectedIndex) {
        case 0:
          {
            return const HomePage();
          }
        case 1:
          {
            return const HomePage();
          }
        case 2:
          {
            return const HomePage();
          }
        case 3:
          {
            return const HomePage();
          }
      }
    }

    return Scaffold(
      body: getPage(),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: yellow,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: listBottom,
      ),
    );
  }
}
