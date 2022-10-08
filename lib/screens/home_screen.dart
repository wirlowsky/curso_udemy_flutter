import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{


  //Constructor constante
  const HomeScreen({super.key});






  @override
  Widget build(BuildContext context) {
    

   return  Scaffold(
     appBar: AppBar(
       title: const Center(
         child: Text('coca-cola'),
       ),
       elevation: 10,
     ),
     backgroundColor: Colors.indigo,
     body:  Center(
       child: Column(
            children: const [
           Text('Contador pulsaciones'),
           Text('0')
         ],
       ),

     )
   );
  }





}