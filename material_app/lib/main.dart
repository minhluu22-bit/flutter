import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      // i want add theme and dark theme in this app
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      themeMode: ThemeMode.system,
      title: "MaterialApp Widget Title",
      home: Scaffold(
        body: Center(
          child: Text('MaterialApps Widget'),
        ),
      ),
    );
  }
}
