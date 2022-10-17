import 'package:flutter/material.dart';
import 'package:my_app/screens/counter_screen.dart';
import 'package:my_app/screens/home_screen.dart';

//Función principal de la aplicación.
void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget{
  //Constructor con la llave
  const MyApp({super.key});


  //En el build es donde creamos el widget que nosotros queremos
  @override
  Widget build(BuildContext context) {
   return const MaterialApp(
     debugShowCheckedModeBanner: false,
     home: //HomeScreen()
     CounterScreen()

   );
  }


}