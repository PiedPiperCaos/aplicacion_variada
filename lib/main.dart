import 'package:aplicacion_variada/src/pages/alert_page.dart';
import 'package:aplicacion_variada/src/pages/animated_container.dart';
import 'package:aplicacion_variada/src/pages/card_page.dart';
import 'package:aplicacion_variada/src/pages/avatar_page.dart';
import 'package:aplicacion_variada/src/pages/home_page.dart';
import 'package:aplicacion_variada/src/pages/input_page.dart';
import 'package:aplicacion_variada/src/pages/lista_page.dart';
import 'package:aplicacion_variada/src/pages/slider_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ],
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
        'slider': (BuildContext context) => SliderPage(),
        'list': (BuildContext context) => ListaPage(),
      },
    );
  }
}
