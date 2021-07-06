import 'package:flutter/material.dart';

class IconManager {
  IconManager._();

  static Icon editPencil = Icon(Icons.border_color_rounded);
  static Icon home = Icon(Icons.home_filled);
  static Icon logout = Icon(Icons.logout);

  // method for create color to icon
  static Icon place(Color color) {
    return Icon(Icons.place_outlined, color: color,);
  } 
}