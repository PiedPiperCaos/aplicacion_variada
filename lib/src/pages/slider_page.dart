import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 0;
  bool _bloquearCheck = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              _crearSlider(),
              _crearCheckbox(),
              _crearImagen(),
            ],
          )),
    );
  }

  _crearSlider() {
    return Slider(
      value: _valorSlider,
      min: 0,
      max: 500,
      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  _crearImagen() {
    return Image(
      image: NetworkImage('https://i.redd.it/ravz54i33z671.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  _crearCheckbox() {
    return Checkbox(
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor!;
          });
        });
  }
}
