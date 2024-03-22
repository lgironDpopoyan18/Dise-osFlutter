import 'package:disenos/screens/diseno_avanzado_tres.dart';
import 'package:disenos/screens/diseno_basico_uno.dart';
import 'package:disenos/screens/diseno_numero_dos.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'basic': ( _ ) => const DisenoScreen(), 
        'second': ( _ ) => const SecondScreen(), 
        'home': ( _ ) => const DisenoAvanzadoScreen(), 
      },
    );
  }
}
