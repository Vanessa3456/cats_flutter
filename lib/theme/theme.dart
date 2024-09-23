import 'package:flutter/material.dart';

ThemeData lightMode=ThemeData(
  brightness:Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.blue.shade400,
    primary: Colors.blue.shade300,
    secondary: Colors.blue.shade200,
  ),

);
ThemeData darkMode=ThemeData(
  brightness: Brightness.dark,
 colorScheme: ColorScheme.dark(
   background: Colors.black,
   primary: Colors.grey.shade400,
   secondary: Colors.grey.shade300
 ),
);