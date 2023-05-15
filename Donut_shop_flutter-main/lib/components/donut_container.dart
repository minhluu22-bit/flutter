import 'package:donut_shop/components/hex_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:donut_shop/model/donut.dart';
import 'package:donut_shop/constant.dart';
import 'package:donut_shop/screens/cart_page.dart';

class DonutContainer extends StatefulWidget {
  const DonutContainer({super.key});

  @override
  State<DonutContainer> createState() => _DonutContainer();
}

class _DonutContainer extends State<DonutContainer> {
  Widget _buildDL(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Donut donut = donutList[index];
    return Padding(
      padding: EdgeInsets.only(
          left: appPadding / 2, right: appPadding / 2, top: appPadding / 2),
      child: Container(
        height: size.height * 0.15,
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: yellow.withOpacity(.2))),
        child: Padding(
          padding: const EdgeInsets.only(
              left: appPadding / 2,
              top: appPadding / 2,
              bottom: appPadding / 2),
          child: Row(
            children: [
              Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: donut.Hexcolor.toColor(),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Image.asset(
                    donut.imageUrl,
                    width: 25,
                    height: 25,
                  )),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: appPadding / 2,
                    right: appPadding * 1.25,
                    top: appPadding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      donut.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      donut.productionSite,
                      style: TextStyle(color: grey),
                    ),
                    Text(
                      '\$ ${donut.price.toStringAsFixed(2)}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CartScreen(
                                donutList[index].imageUrl,
                                donutList[index].name,
                                donutList[index].productionSite,
                                donutList[index].price,
                                donutList[index].Hexcolor)));
                  },
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: yellow,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(55))),
                      child: Icon(
                        Icons.add_rounded,
                        color: white,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.45,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: donutList.length,
          itemBuilder: (context, index) {
            return _buildDL(context, index);
          }),
    );
  }
}
