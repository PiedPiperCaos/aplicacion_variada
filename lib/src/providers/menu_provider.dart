import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MenuProvider {
  List<dynamic> opciones = [];

  MenuProvider() {
    cargarData();
  }

  cargarData() {
    rootBundle.loadString('data/menu_opts.json').then((data) {
      print(data);
    });
  }
}
