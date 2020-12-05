import 'package:flutter/material.dart';

//Creación de un StatefulWidget, tenemos un estado y el widget irá cambiando y redibujándose
class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
}

//El estado a manejar del Widget, lo hacemos privado para que no sea accesible desde otro fichero
class _CounterPageState extends State<CounterPage> {

  final _textStyle = new TextStyle(fontSize:25);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    //Un scaffold establece una pantalla con appbar, fabs y demás
    return Scaffold(
      appBar: AppBar(
        title: Text('StatefulWidget'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          //Centramos los hijos de la columna
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            //Utilizamos el estilo que hemos creado
            Text('Número de clicks:', style: _textStyle),
            Text('$_counter', style: _textStyle),
          ],
        )
      ),
      floatingActionButton: _createButtons(),
    );
  }

  //Creamos un método que nos devuelva una lista de botones en fila, columna... etc
  Widget _createButtons(){
    return Row(
      //Para que se vaya a la derecha toda la fila
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget> [
        //En este caso utilizamos el sized box como un margen
        SizedBox(width: 30.0),
        FloatingActionButton(
          onPressed: _restartCounter,
          child: Icon(Icons.exposure_zero)
        ),
        /*Separación entre botones, en el que utilizamos Expanded es para que 
        ocupe todo el espacio disponible*/ 
        Expanded(child: SizedBox()),
        FloatingActionButton(
          /*NO utilizamos paréntesis porque si no se llamaría a la función
          cada vez que se pinte el Widget*/
          onPressed: _substract,
          child: Icon(Icons.remove)
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          onPressed: _add,
          child: Icon(Icons.add)
        ),
      ],
    );
  }

  void _add(){
    setState(() {
      _counter++;
    });
  }

  void _substract(){
    setState(() => _counter--);
  }

  void _restartCounter(){
    setState(() => _counter = 0);
  }
}