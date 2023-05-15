import 'package:donut_shop/constant.dart';
import 'package:flutter/material.dart';

import 'package:donut_shop/components/donut_container.dart';
import 'package:donut_shop/screens/cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    bool buttonState = false;

    void _buttonChange() {
      setState(() {
        buttonState = !buttonState;
      });
    }

    return Scaffold(
      appBar: AppBar(
          backgroundColor: white,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.all(appPadding / 2),
            child: Icon(
              Icons.menu_rounded,
              color: black,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(appPadding / 2),
              child: Container(
                decoration: BoxDecoration(
                  color: yellow,
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(28), // Image radius
                    child: Image.asset('assets/profile/profile.png',
                        fit: BoxFit.contain),
                  ),
                ),
              ),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(appPadding),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Welcome, Jalal',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Choice your Best food',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: yellow,
                          )),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 59,
                height: 59,
                decoration: BoxDecoration(
                    color: yellow,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(style: BorderStyle.solid, width: 0.25)),
                child: Icon(Icons.search_rounded),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 50,
                child: OutlinedButton(
                  onPressed: buttonState ? _buttonChange : null,
                  child: Text(
                    "Donut",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      return states.contains(MaterialState.disabled)
                          ? yellow // Disabled color
                          : grey; // Regular color
                    }),
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: 100,
                height: 50,
                child: OutlinedButton(
                  onPressed: buttonState ? null : _buttonChange,
                  child: Text(
                    "Pink Donut",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      return states.contains(MaterialState.disabled)
                          ? yellow // Disabled color
                          : grey; // Regular color
                    }),
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: 100,
                height: 50,
                child: OutlinedButton(
                  child: Text(
                    "Floating",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      return states.contains(MaterialState.disabled)
                          ? yellow // Disabled color
                          : grey; // Regular color
                    }),
                  ),
                  onPressed: buttonState ? null : _buttonChange,
                ),
              ),
            ],
          ),
          DonutContainer(),
        ]),
      ),
    );
  }
}
