//import 'dart:js';

import 'package:aplicacion_variada/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compnentes'),
        centerTitle: true,
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // print(menuProvider.opciones);
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListView(
          children: _listaItems(snapshot.data),
        );
      },
    );
    //return ListView(children: _listaItems());
  }

  List<Widget> _listaItems(List<dynamic> data) {
    final List<Widget> opciones = [];
    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['ruta']),
        leading: Icon(Icons.account_circle),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {},
      );
      opciones.add(widgetTemp);
    });
    return opciones;
  }
}
