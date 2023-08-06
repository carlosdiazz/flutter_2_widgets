import 'package:flutter/material.dart';
import 'package:flutter_2_widgets/presentation/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeChangeScreen extends ConsumerWidget {
  const ThemeChangeScreen({super.key});
  static const name = 'ThemeChangeScreen';

  @override
  Widget build(BuildContext context, ref) {
    //final bool isDarkMode = ref.watch(isDarkModeProvider);

    final isDarkMode2 = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Changer"),
        actions: [
          IconButton(
              onPressed: () {
                //ref.read(isDarkModeProvider.notifier).update((state) => !state);
                ref.read(themeNotifierProvider.notifier).toggleDarkMode();
              },
              icon: isDarkMode2
                  ? const Icon(Icons.dark_mode_outlined)
                  : const Icon(Icons.light_mode_outlined))
        ],
      ),
      body: const ThemeChangerView(),
    );
  }
}

class ThemeChangerView extends ConsumerWidget {
  const ThemeChangerView({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);

    //final int selectColor = ref.watch(selectedColorProvider);
    final int selectColor2 = ref.watch(themeNotifierProvider).selectedColor;

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final color = colors[index];
        return RadioListTile.adaptive(
          activeColor: color,
          title: Text(
            "Este color",
            style: TextStyle(color: color),
          ),
          subtitle: Text('${color.value}'),
          value: index,
          groupValue: selectColor2,
          onChanged: (value) {
            //ref.read(selectedColorProvider.notifier).update((state) => value!);
            ref.read(themeNotifierProvider.notifier).changeColorIndex(value!);
          },
        );
      },
    );
  }
}
