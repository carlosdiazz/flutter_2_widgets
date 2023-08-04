import 'package:flutter/material.dart';

class ProgreesScreen extends StatelessWidget {
  static const String name = "ProgreesScreen";
  const ProgreesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Progress Indicators"),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: const [
        SizedBox(
          height: 30,
        ),
        Text("CircularProgressIndicator"),
        CircularProgressIndicator(
          strokeWidth: 2,
          backgroundColor: Colors.black,
        ),
        SizedBox(
          height: 30,
        ),
        Text("CircularProgressIndicator adaptative"),
        CircularProgressIndicator.adaptive(),
        SizedBox(
          height: 30,
        ),
        Text("CircularProgressIndicator custom"),
        _ControllerProgressIndicator()
      ]),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    //Este Stream va a emitir valores cada 30 milisegundo, hasta llegar a 100
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300),
          (computationCount) {
        return (computationCount * 2) / 100;
      }).takeWhile((element) => element < 100),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircularProgressIndicator(
              strokeWidth: 2,
              backgroundColor: Colors.black,
              value: progressValue,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: LinearProgressIndicator(
              value: progressValue,
            ))
          ]),
        );
      },
    );
  }
}
