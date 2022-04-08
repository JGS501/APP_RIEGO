import 'package:flutter/material.dart';

class AyudaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AYUDA'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Container(
              height: 200,
              width: 450,
              color: Colors.green[300],
              alignment: Alignment.center,
              child:
              Text('El sistema regará las plantas siempre que detecte cierta humedad en el suelo y temperatura en el ambiente. La aplicación fue creada para poder activar el sistema de riego, cuenta con 2 apartados; Programación para ingresar y activar el sistema y el apartado Humedad en donde se visualiza el reporte de humedad.'),
            ),
            Container(
              child: Column(
                children: [
                  Image.asset(
                    'Images/agua.jpg',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(),
          ),
          FloatingActionButton(
            heroTag: 'btnI',
            child: Icon(Icons.water_damage_outlined),
            backgroundColor: Colors.lightGreen,
            onPressed: () {
              Navigator.pushNamed(context, 'Inicio');
            },
          ),
        ],
      ),
    );
  }
}
