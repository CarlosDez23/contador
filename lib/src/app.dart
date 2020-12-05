import 'package:contador/src/pages/counter_page.dart';

import 'package:contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';

//Creación de un Widget sin estado
class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      //Para quitar el banner de "debug"
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage(),
        child: CounterPage(),
      )
    );
  }
}
