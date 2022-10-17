import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //Constructor constante
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const fonStyle = TextStyle(color: Colors.red, fontSize: 30);


    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('coca-cola'),
          ),
          elevation: 10,
        ),
        backgroundColor: Colors.indigo,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget> [
              Text('Contador pulsaciones', style: fonStyle),
              Text('10',style: fonStyle)
            ]


          )
        ),
    floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    floatingActionButton: FloatingActionButton(
        onPressed:(){
          print('Hola mundo');
        },
        child: const Icon(Icons.add),

    ),

    );

  }



}
