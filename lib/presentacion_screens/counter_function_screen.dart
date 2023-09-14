//4. Import
import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  //3ro. create override missing Ctrl + .
  @override
  Widget build(BuildContext context) {
    //5. Inicializar un contador
    //int clickCounter = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter functions", ),
        foregroundColor: Colors.white,

        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
                style: TextStyle(fontSize: 169, fontWeight: FontWeight.w100)),
            Text(
              'Click${clickCounter == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
      floatingActionButton: 
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
          onPressed: () {
            clickCounter = 0;
            setState(() {});
          },
            child: const Icon(Icons.refresh_outlined),
          ),
          SizedBox(height: 10,),
         
          FloatingActionButton(
          onPressed: () {
            setState(() {
              clickCounter++;
            });
          },
          
          child: const Icon(Icons.plus_one)),

          SizedBox(height: 10,),

          FloatingActionButton(
          onPressed: () {
            setState(() {
              clickCounter--;
            });
          },
          
          child: const Icon(Icons.exposure_minus_1_outlined)),
        ],
      )
      
    );
  }
}
