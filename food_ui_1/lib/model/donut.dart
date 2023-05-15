import "package:flutter/material.dart";

class Donut {
  final String imageUrl;
  final String name;
  final String productionSite;
  final double price;
  final String Hexcolor;

  Donut(
      this.imageUrl, this.name, this.productionSite, this.price, this.Hexcolor);
}

final _chocolateDonut = Donut('assets/chocolate_donut.png', 'Chocolate Donut',
    'Spicy Tasty Donut fmaily', 10.00, 'fcecda');

final _pinkDonut = Donut('assets/pink_donut.png', 'Pink Donut',
    'Spicy Tasty Donut fmaily', 20.00, 'fedeeb');

final _floatingDonut = Donut('assets/floating_donut.png', 'Floating Donut',
    'Spicy Tasty Donut fmaily', 30.00, 'fdc3d3');

final List<Donut> donutList = [_chocolateDonut, _pinkDonut, _floatingDonut];
