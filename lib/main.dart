import 'package:contador_de_numeros/presentacion_screens/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:contador_de_numeros/presentacion_screens/counter_function_screen.dart';

//1ro. El Main
void main() => runApp(const MyApp());

//2do. class MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //para ocultar la barra azul
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.black,
      ),
      home: const CounterFunctionsScreen(),
    );
  }

//3ro.
}
