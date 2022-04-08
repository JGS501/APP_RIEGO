import 'package:flutter/material.dart';

class HumedadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HUMEDAD'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('AQUI SE MUSTRA EL REPORTE DE HUMEDAD')],
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
          SizedBox(
              width:25
          ),
          FloatingActionButton(
            backgroundColor: Colors.lightGreen,
            heroTag: 'btnA',
            child: Icon(Icons.help_outline),
            onPressed: () {
              Navigator.pushNamed(context, 'Ayuda');
            },
          ),
        ],
      ),
    );
  }
}
