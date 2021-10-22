import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _fecha = '';
  List _poderes = ['Volar', 'Rayos X', 'Super Aliento', 'Super Fuerza'];
  String _opcionSeleccionada = 'Volar';
  bool _esconder = false;

  TextEditingController _miTextController = new TextEditingController();
  TextEditingController _accion = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(),
          Divider(),
          _crearDropDown(),
          Divider(),
          _crearPersona(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('<o>'),
        onPressed: () {
          setState(() {
            _esconder = !_esconder;
          });
        },
      ),
    );
  }

  _crearInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
          _accion.text = valor;
        });
      },
    );
  }

  _crearPersona() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Email es: $_email'),
    );
  }

  _crearPassword() {
    return TextField(
      obscureText: _esconder,
      // autofocus: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Contraseña',
        labelText: 'Password',
        helperText: 'Introduce aquí tu contraseña',
        suffixIcon: Container(
            child: TextButton(
          child: Text('<o>'),
          onPressed: () {
            setState(() {
              _esconder = !_esconder;
            });
          },
        )),
        icon: Icon(Icons.account_circle),
      ),
    );
  }

  _crearEmail() {
    return TextField(
      controller: _accion,
      // autofocus: true,
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        counter: Text('Letras ${_email.length}'),
        hintText: 'Direccion de email',
        labelText: 'E-mail',
        helperText: 'Su direccion de correo',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );
  }

  _crearFecha() {
    return TextField(
      // autofocus: true,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Fecha de nacimiento',
        labelText: 'Fecha de nacimiento',
        helperText: 'Introduzca su fecha de nacimiento',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

// Async y await importantes en futures
  void _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2022));
    if (picked != null) {
      _fecha = picked.toString();
      _miTextController.text = _fecha;
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> list = [];
    _poderes.forEach((poder) {
      list.add(DropdownMenuItem<String>(
        child: Text(poder),
        value: poder,
      ));
    });
    return list;
  }

  _crearDropDown() {
    return DropdownButton(
      value: _opcionSeleccionada,
      items: getOpcionesDropdown(),
      onChanged: (valor) {
        setState(() {
          _opcionSeleccionada = valor.toString();
        });
      },
    );
  }
}
