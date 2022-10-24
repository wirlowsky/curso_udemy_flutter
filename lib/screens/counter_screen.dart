import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  //Constructor constante
 const  CounterScreen({super.key});


  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 10;
  void increase( int action){
    print(contador);
  switch(action){
    case 0:
      contador++;
      break;
    case 1:
      contador --;
      break;
    case 2:
      contador = 0;
      break;
  }

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

    const fonStyle = TextStyle(color: Colors.red, fontSize: 30);
    print(CustomFloatingActions(increase));

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

      floatingActionButton: CustomFloatingActions(increase)
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

final Function increaseFn;


const CustomFloatingActions(this.increaseFn, {super.key});

  @override
  Widget build(BuildContext context) {
 return Row(


      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => increaseFn(0),
          child: const Icon(Icons.add),
        ),
        //const SizedBox(width: 20,),
        FloatingActionButton(
          onPressed: () => increaseFn(1),

          child: const Icon(Icons.exposure_minus_1),
        ),
        // const SizedBox(width: 20,),
        FloatingActionButton(
          onPressed: () => increaseFn(2),
          child: const Icon(Icons.reset_tv),
        )
      ]
  );
  }

}
