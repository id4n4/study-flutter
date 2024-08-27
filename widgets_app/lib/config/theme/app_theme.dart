import 'package:flutter/material.dart';

const colorList = [
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.purple,
  Colors.orange,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0 && selectedColor < colorList.length,
            'Selected color index is out of range 0 - ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
        colorSchemeSeed: colorList[selectedColor],
        // appBarTheme: const AppBarTheme(centerTitle: true)
      );
}
