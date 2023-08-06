import 'package:flutter/material.dart';
import 'package:flutter_2_widgets/presentation/providers/counter_provider.dart';
import 'package:flutter_2_widgets/presentation/providers/theme_provider.dart';
//import 'package:flutter_2_widgets/presentation/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});
  static const String name = "counterScreen";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //Este pendiente a este provider cada ver que ese cambie, flutter estara pendoiente a eso
    final int clickCounter = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("CounterScreen"),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(isDarkModeProvider.notifier).update((state) => !state);
              },
              icon: isDarkMode
                  ? const Icon(Icons.dark_mode_outlined)
                  : const Icon(Icons.light_mode_outlined))
        ],
      ),
      body: Center(
        child: Text(
          "Valor: $clickCounter",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //?Otra forma de hacerlo
          //?ref.read(counterProvider.notifier).state++;

          ref.read(counterProvider.notifier).update((state) => state + 1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
