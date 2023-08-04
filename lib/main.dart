import 'package:flutter/material.dart';
import 'package:flutter_2_widgets/config/routes/app_touter.dart';
import 'package:flutter_2_widgets/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: "Widgets App",
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 2).getTheme());
  }
}
