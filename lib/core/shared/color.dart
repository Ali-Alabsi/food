
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../contraller/Get/GetContraller.dart';
File?  filee;
Color  mainColor = Colors.teal;
GetControl obGet = Get.put(GetControl());
// Color  whiteColor = Colors.white;
// Color  blackColor = Colors.black;
// Color  mainColor = Color.fromRGBO(77, 166, 54, 1.0);
//  Color  mainColor = Color.fromRGBO(23, 178, 88, 1.0);
Color subColor = Colors.white70;

class ColorChanger extends ChangeNotifier {
  Color color = Colors.white;

  ColorChanger() {
    // Set the initial color
    color = Colors.white;
  }

  void changeColor() {
    // Change the color
    color = Colors.black;

    // Notify listeners of the change
    notifyListeners();
  }
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }

  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });

  return MaterialColor(color.value, swatch);
}