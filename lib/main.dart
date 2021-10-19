import 'package:aplicacion_variada/src/pages/alert_page.dart';
import 'package:aplicacion_variada/src/pages/animated_container.dart';
import 'package:aplicacion_variada/src/pages/card_page.dart';
import 'package:aplicacion_variada/src/pages/avatar_page.dart';
import 'package:aplicacion_variada/src/pages/home_page.dart';
import 'package:aplicacion_variada/src/pages/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage(),
        'card': (BuildContext context) => CardPage(),
        'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
        'inputs': (BuildContext context) => InputPage(),
      },
    );
  }
}
