import 'package:flutter/material.dart';

class ProgramacionPage extends StatefulWidget{
  @override
  State<ProgramacionPage> createState() => _ProgramacionPage();
}

class _ProgramacionPage extends State<ProgramacionPage>{
  bool isSwitched=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PROGRAMACIÓN'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('AQUI SE ACTIVA EL SISTEMA'),
            Switch(
              value: isSwitched,
              onChanged: (value){
                setState(() {
                  isSwitched=value;
                });
              },
              activeTrackColor: Colors.lightGreenAccent,
              activeColor: Colors.green,
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
          SizedBox(
              width:15
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
