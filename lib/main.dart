import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:diseno/src/pages/basico_page.dart';
import 'package:diseno/src/pages/scroll_page.dart';
import 'package:diseno/src/pages/botones_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Cambiar el color de la barra top donde esta la hora, icono de la pila, wifi, antenas,.. etc..
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'scroll',
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage(),
      },
    );
  }
}
