import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const String name = "SnackBarScreen";
  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    //Primero Cierro el SnackBar
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text("Este es mi SnackBar"),
      action: SnackBarAction(
        label: "Ok!",
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    ));
  }

  void openDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false, //Asi no me pueden quitar el dialogo

        context: context,
        builder: (context) {
          //Cone sto lo quito automatico
          Future.delayed(const Duration(seconds: 5), () {
            Navigator.pop(context);
          });
          return AlertDialog(
            title: const Text("Esta segudo"),
            content: const Text("Qloqqqqqqqqqqqqq estoy probando"),
            actions: [
              TextButton(
                  onPressed: () => context.pop(),
                  child: const Text("Cancelar")),
              FilledButton(onPressed: () {}, child: const Text("Ok!"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                    context: context,
                    children: [const Text("Carlos Esta probando esta App")]);
              },
              child: const Text("Licencias Usadas")),
          FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: const Text("Mostrar dialogos"))
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showCustomSnackbar(context);
        },
        label: const Text("Mostrar Snackbar"),
        icon: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
