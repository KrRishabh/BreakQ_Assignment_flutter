import 'package:flutter/material.dart';

Color kThemeColor = Color(0xff191A2C);
Color kThemeColorLite = Color(0xff212143);

BoxDecoration kButtonStyle = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.white);

BoxDecoration kDisplayScreen = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(5)),
  border: Border.all(color: Colors.grey),
  color: Colors.black38,
);

TextStyle kButtonText = TextStyle(color: kThemeColor, fontSize: 40);
TextStyle kUIText = TextStyle(color: Colors.white, fontSize: 18);
TextStyle kHeadingText =
    TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold);
