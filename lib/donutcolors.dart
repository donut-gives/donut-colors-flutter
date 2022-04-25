import 'package:flutter/material.dart';

class DonutColor extends Color {
  const DonutColor(int value) : super(value);

  operator [](double opacity) => withOpacity(opacity);
}



/// Color library of Donut
/// Use this library of colors to build your Flutter applications.
/// Example - To use color [blue] with 30% opacity
/// DonutColors.blue[0.3]
class DonutColors {
  DonutColors._();
  
  static const DonutColor blue = DonutColor(0xFF1E7BEE);
  static const DonutColor black = DonutColor(0xFF020913);
  static const DonutColor display = DonutColor(0xFF28282A);
  static const DonutColor pink = DonutColor(0xFFEF5DA8);
  static const DonutColor lightBlue = DonutColor(0xFF1D9BF0);
  static const DonutColor lightBlue2 = DonutColor(0xFFB3D3F9);
  static const DonutColor lightBlue1 = DonutColor(0xFFD8E9FD);
  static const DonutColor white = DonutColor(0xFFFFFFFF);
  static const DonutColor offWhite = DonutColor(0xFFFAFCFF);
  static const DonutColor grey = DonutColor(0xFFD4D4D4);
  static const DonutColor grey1 = DonutColor(0xFF676B71);
  static const DonutColor grey2 = DonutColor(0xFF9A9DA1);
  static const DonutColor shadow1 = DonutColor(0x3328282A);
  static const DonutColor shadow2 = DonutColor(0x26000000);
}