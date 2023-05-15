import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFEEEDFB),
  100: Color(0xFFD5D3F5),
  200: Color(0xFFBAB5EF),
  300: Color(0xFF9E97E8),
  400: Color(0xFF8981E3),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF6C63DA),
  700: Color(0xFF6158D5),
  800: Color(0xFF574ED1),
  900: Color(0xFF443CC8),
});
const int _primaryPrimaryValue = 0xFF746BDE;

const MaterialColor primaryAccent = MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFFB4B0FF),
  700: Color(0xFF9C96FF),
});
const int _primaryAccentValue = 0xFFE4E3FF;