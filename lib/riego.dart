import 'package:app_riego/Inicio.page.dart';
import 'package:app_riego/ayuda_page.dart';
import 'package:app_riego/humedad_page.dart';
import 'package:app_riego/programacion_page.dart';
import 'package:flutter/material.dart';

class Riego extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => InicioPage(),
        'programacion': (BuildContext context) => ProgramacionPage(),
        'humedad': (BuildContext context) => HumedadPage(),
        'Ayuda': (BuildContext context) => AyudaPage(),
        'Inicio': (BuildContext context) => InicioPage(),
      },
    );
  }
}
