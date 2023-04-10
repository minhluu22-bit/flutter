import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Text Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Flutter"),
        ),
        body: Center(
          child: Text(
            "Text Flutter" * 5,
            softWrap: true,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.lineThrough,
              wordSpacing: 2,
              letterSpacing: 5,
              backgroundColor: Colors.yellow,
              decorationColor: Colors.red,
              height: 2
            ),
          ),
        ),
      ),
    );
  }
}
