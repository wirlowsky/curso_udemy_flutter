import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  //Constructor constante
 const  CounterScreen({super.key});


  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 10;

  @override
  Widget build(BuildContext context) {

    const fonStyle = TextStyle(color: Colors.red, fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('cunter Screen'),
        ),
        elevation: 10,
      ),
      backgroundColor: Colors.indigo,
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  <Widget>[
            const Text('Contador pulsaciones', style: fonStyle),
            Text(contador.toString(), style: fonStyle)
          ])),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              contador++;
              print(contador.toString());

              setState(() {});
            },
            child: const Icon(Icons.add),
          ),
          //const SizedBox(width: 20,),
          FloatingActionButton(
            onPressed: () {
              contador--;
              print(contador.toString());

              setState(() {});
            },

            child: const Icon(Icons.exposure_minus_1),
          ),
         // const SizedBox(width: 20,),
          FloatingActionButton(
            onPressed: () {
              contador=0;
              print(contador.toString());

              setState(() {});
            },
            child: const Icon(Icons.reset_tv),
          )
        ]
      ),
    );
  }
}
