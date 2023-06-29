import 'package:flutter/material.dart';
import 'package:flutter_2_widgets/config/theme/app_theme.dart';
import 'package:flutter_2_widgets/presentation/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 2).getTheme(),
        home: const HomeScreen());
  }
}
