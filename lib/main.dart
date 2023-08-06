import 'package:flutter/material.dart';
import 'package:flutter_2_widgets/config/routes/app_touter.dart';
import 'package:flutter_2_widgets/config/theme/app_theme.dart';
import 'package:flutter_2_widgets/presentation/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    // Adding ProviderScope enables Riverpod for the entire project
    const ProviderScope(child: MainApp()),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    //final isDarMode = ref.watch(isDarkModeProvider);
    //final selectColor = ref.watch(selectedColorProvider);
    final appTheme = ref.watch(themeNotifierProvider);

    return MaterialApp.router(
        title: "Widgets App",
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
        theme: appTheme.getTheme());
  }
}
