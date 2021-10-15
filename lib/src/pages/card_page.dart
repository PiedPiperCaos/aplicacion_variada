import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cardTipo1(context),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

Widget _cardTipo2() {
  return Card(
    clipBehavior: Clip.antiAlias,
    elevation: 10.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Column(
      children: [
        FadeInImage(
          //  imageErrorBuilder: ,
          image: NetworkImage(
              'https://i.pinimg.com/originals/92/17/a8/9217a86945b10b32d03b1ae913d4af14.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          placeholder: AssetImage('assets/jar-loading.gif'),
          height: 300,
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text('Shrek Wazowski es real'),
        ),
      ],
    ),
  );
}

Widget _cardTipo1(BuildContext context) {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('Soy el titulo de esta tarjeta'),
          subtitle: Text('Soy el subtitulo'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: null, child: Text('Cancelar')),
            TextButton(
                onPressed: () => _mostrarMadrid(context), child: Text('OK')),
          ],
        )
      ],
    ),
  );
}

void _mostrarMadrid(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
            content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FadeInImage(
              //  imageErrorBuilder: ,
              image: NetworkImage(
                  'https://tejidoselmundo.com/911793-thickbox_default/toalla-de-playa-forma-escudo-real-madrid.jpg'),
              fadeInDuration: Duration(milliseconds: 200),
              placeholder: AssetImage('assets/jar-loading.gif'),
              height: 300,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text('Hala Madrid'),
            ),
          ],
        ));
      });
}
