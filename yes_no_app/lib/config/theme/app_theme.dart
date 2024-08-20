import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF034159);

const List<Color> colorThemes = [
  _customColor,
  Color(0xFF034159),
  Color(0xFF025951),
  Color(0xFF02735E),
  Color(0xFF038C3E),
  Color(0xFF0CF25D),
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    required this.selectedColor,
  }) : assert(
            selectedColor >= 0 &&
                selectedColor < colorThemes.length,
            'selectedColor must be between 0 and ${colorThemes.length - 1}');
  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: colorThemes[selectedColor],
    );
  }
}
