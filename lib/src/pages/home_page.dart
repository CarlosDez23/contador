import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {

  //Creamos una instancia de TextStyle para el estilo de texto
  //Lo hacemos final porque nunca va a cambiar
  final textStyle = new TextStyle(fontSize:25);
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    //Un scaffold establece una pantalla con appbar, fabs y demás
    return Scaffold(
      appBar: AppBar(
        title: Text('myFlutterApp'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          //Centramos los hijos de la columna
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            //Utilizamos el estilo que hemos creado
            Text('Número de clicks:', style: textStyle),
            Text('$counter', style: textStyle),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print('Hola mundo');
        },
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
