import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Scaffold AppBar")
        ),
        backgroundColor: Colors.grey[400],
        body: Center(
          child: Text("Scaffold Widget Example"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text("+"),
          onPressed: () {},
        ),
        drawer: Drawer(
          child: Text("Message"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'AC Unit',
              icon: Icon(Icons.ac_unit),
            ),
          ]
        ),
      ),
    );
  }
}

