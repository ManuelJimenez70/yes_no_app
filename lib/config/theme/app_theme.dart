import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF381111);

const List<Color> colorThemes = [
  _customColor,
  Colors.black,
  Colors.teal,
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.purple,
  Colors.orange,
];

class AppTheme {
  final int selectedColor;
  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0 && selectedColor < colorThemes.length,
            "Color must be between 0 and ${colorThemes.length - 1}");

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorThemes[selectedColor],
    );
  }
}
