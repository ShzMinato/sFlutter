import 'dart:math';

import 'package:flutter/material.dart';

class UniqueColorGenerator {
  List<Color> colorList = [
    Colors.blue,
    Colors.yellow,
    Colors.red,
    Colors.black54,
    Colors.greenAccent,
    Colors.pinkAccent
  ];

  Random random = Random();

  Color getColor() {
    return colorList[random.nextInt(6)];
  }
}
