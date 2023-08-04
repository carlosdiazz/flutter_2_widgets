import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = "UiControlsScreen";
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ui COntrols"),
      ),
      body: const _UiControlsView(),
    );
  }
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool esMayorDeEdad = false;
  bool esDominicano = false;
  bool esDeportista = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(), //Quito el rebote
      children: [
        SwitchListTile(
          value: isDeveloper,
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          },
          title: const Text("Developer Mode"),
          subtitle: const Text("Controles adicionales"),
        ),
        const Divider(),
        ExpansionTile(
          title: const Text("Vehiculo de transporte"),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text("Car"),
              subtitle: const Text("Viajar por carro"),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) {
                selectedTransportation = Transportation.car;
                setState(() {});
              },
            ),
            RadioListTile(
              title: const Text("Plane"),
              subtitle: const Text("Viajar por Plane"),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) {
                selectedTransportation = Transportation.plane;
                setState(() {});
              },
            ),
            RadioListTile(
              title: const Text("Boat"),
              subtitle: const Text("Viajar por Boat"),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) {
                selectedTransportation = Transportation.boat;
                setState(() {});
              },
            ),
            RadioListTile(
              title: const Text("Submarine"),
              subtitle: const Text("Viajar por Submarino"),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) {
                selectedTransportation = Transportation.submarine;
                setState(() {});
              },
            )
          ],
        ),
        const Divider(),
        CheckboxListTile(
          title: const Text("Es Mayor de Edad?"),
          value: esMayorDeEdad,
          onChanged: (value) {
            setState(() {
              esMayorDeEdad = !esMayorDeEdad;
            });
          },
        ),
        CheckboxListTile(
          title: const Text("Es Deportista?"),
          value: esDeportista,
          onChanged: (value) {
            setState(() {
              esDeportista = !esDeportista;
            });
          },
        ),
        CheckboxListTile(
          title: const Text("Es Dominicano"),
          value: esDominicano,
          onChanged: (value) {
            setState(() {
              esDominicano = !esDominicano;
            });
          },
        )
      ],
    );
  }
}
