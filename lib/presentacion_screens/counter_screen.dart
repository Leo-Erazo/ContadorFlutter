//4. Import
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  //3ro. create override missing Ctrl + .
  @override
  Widget build(BuildContext context) {
    //5. Inicializar un contador
    //int clickCounter = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('El texto en la barra..'),
        centerTitle: true,
        backgroundColor: Colors.orange,
        shadowColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
                style: TextStyle(fontSize: 169, fontWeight: FontWeight.w100)),
            Text(
              'Click${clickCounter == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              clickCounter++;
            });
          },
          child: const Icon(Icons.add)),
    );
  }
}
