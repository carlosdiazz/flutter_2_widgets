import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});
  static const String name = "buttonsScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pop();
          },
          child: const Icon(Icons.arrow_back_ios_new)),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10, //Colocar un espacio entres los hijos del Wrap
          //crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text("Elevated Button")),
            const ElevatedButton(
                onPressed: null, child: Text("Elevated Button Null")),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm),
                label: const Text("Elevated Button Icon")),
            FilledButton(onPressed: () {}, child: const Text("FIlledButton")),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit_sharp),
                label: const Text("FilledButton Icon")),
            OutlinedButton(
                onPressed: () {}, child: const Text("OutlineButton")),
            OutlinedButton.icon(
              onPressed: () {},
              label: const Text("OutlineButton"),
              icon: const Icon(Icons.abc),
            ),
            TextButton(onPressed: () {}, child: const Text("TextButton")),
            TextButton.icon(
              onPressed: () {},
              label: const Text("TextButton"),
              icon: const Icon(Icons.abc_outlined),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.airplanemode_active_outlined)),
            const CustomButtons()
          ],
        ),
      ),
    );
  }
}

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("ddd"),
          ),
        ),
      ),
    );
  }
}
