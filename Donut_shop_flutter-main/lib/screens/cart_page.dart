import 'package:flutter/material.dart';

import 'package:donut_shop/constant.dart';
import 'package:donut_shop/components/hex_code.dart';

class CartScreen extends StatefulWidget {
  final String imageCart;
  final String nameCart;
  final String productionCart;
  final double priceCart;
  final String hexColorShadow;
  CartScreen(this.imageCart, this.nameCart, this.productionCart, this.priceCart,
      this.hexColorShadow);
  @override
  State<CartScreen> createState() => _CartScreenState(
      imageCart, nameCart, productionCart, priceCart, hexColorShadow);
}

int number = 0;

class _CartScreenState extends State<CartScreen> {
  late final String _imageCart;
  late final String _nameCart;
  late final String _productionCart;
  late final double _priceCart;
  late final String _hexColorShadow;
  _CartScreenState(this._imageCart, this._nameCart, this._productionCart,
      this._priceCart, this._hexColorShadow);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: white,
          leading: Padding(
            padding: const EdgeInsets.all(appPadding / 2),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: black,
                )),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(appPadding / 2),
              child: Icon(
                Icons.notifications_none_outlined,
                color: black,
              ),
            )
          ],
        ),
        backgroundColor: white,
        body: SafeArea(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.45,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100.0),
                        bottomLeft: Radius.circular(100.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: _hexColorShadow.toColor(),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          _imageCart,
                          height: 200,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(appPadding),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _nameCart,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              _productionCart,
                              style: TextStyle(color: grey),
                            )
                          ],
                        ),
                        Text(
                          '\$ ${(_priceCart * number).toString()}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.access_time,
                          color: yellow,
                          size: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Delivery in',
                              style: TextStyle(
                                color: grey,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '10 mins',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: appPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: yellow),
                                child: Center(
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add_rounded,
                                      color: white,
                                      size: 15,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        number++;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                number.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: yellow),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.remove,
                                    color: white,
                                    size: 15,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      number--;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Restaurants Info',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'A restaurants (somethings known as a dinner) is a place where cooked food is sold to the public, and where people sit down to eat it.',
                          style: TextStyle(color: grey),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: size.width,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: yellow, foregroundColor: white),
                        child: Text(
                          'Add to cart',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
