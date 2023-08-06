import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.red,
  Colors.purple,
  Colors.greenAccent,
  Colors.amber,
  Colors.indigo,
  Colors.teal
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme copyWith({int? selectedColor, bool? isDarkMode}) => AppTheme(
      selectedColor: selectedColor ?? this.selectedColor,
      isDarkMode: isDarkMode ?? this.isDarkMode);

  AppTheme({this.selectedColor = 0, this.isDarkMode = true})
      : assert(
            selectedColor >= 0, "El indice de color no puede ser menor que 0"),
        assert(selectedColor < colorList.length,
            "El índice de color está fuera del rango permitido");

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
