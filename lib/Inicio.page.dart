import 'package:app_riego/humedad_page.dart';
import 'package:app_riego/programacion_page.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('SISTEMA DE RIEGO'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  RaisedButton(
                    child: Text("PROGRAMACIÓN"),
                    color: Colors.lightGreen,
                    onPressed: (){
                      final ruta = MaterialPageRoute(
                        builder: (context) {
                          return ProgramacionPage();
                        },
                      );
                      Navigator.push(context, ruta);
                    },),
                  SizedBox(
                      height: 15,
                  ),
                  RaisedButton(
                    child: Text("HUMEDAD"),
                    color: Colors.lightGreen,
                    onPressed: (){
                      final ruta = MaterialPageRoute(
                        builder: (context) {
                          return HumedadPage();
                        },
                      );
                      Navigator.push(context, ruta);
                    },),
                ],
              ),
            ),
            Container(
              height: 400,
              width: 400,
              alignment: Alignment.center,
              child: Image.asset('images/riego.jpg',
              ),
            ),
          ],
        ),
      ),

    );
  }
}
