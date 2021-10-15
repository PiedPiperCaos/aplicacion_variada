import 'package:flutter/material.dart';

class AvatarPage extends StatefulWidget {
  @override
  State<AvatarPage> createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  String salida = ' ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              child: GestureDetector(
                onTap: () {
                  //salida =
                  //'https://cdn.vox-cdn.com/thumbor/qCfHPH_9Mw78vivDlVDMu7xYc78=/715x248:1689x721/920x613/filters:focal(972x299:1278x605):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/69305239/shrek4_disneyscreencaps.com_675.0.jpg';
                },
              ),
              backgroundImage: NetworkImage(
                  'https://cdn.vox-cdn.com/thumbor/qCfHPH_9Mw78vivDlVDMu7xYc78=/715x248:1689x721/920x613/filters:focal(972x299:1278x605):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/69305239/shrek4_disneyscreencaps.com_675.0.jpg'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              child: GestureDetector(
                onTap: () {
                  // salida = 'https://i.ytimg.com/vi/O7ruiZ5m_JE/hqdefault.jpg';
                },
              ),
              backgroundImage: NetworkImage(
                  'https://i.ytimg.com/vi/O7ruiZ5m_JE/hqdefault.jpg'),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: FadeInImage(
            image: NetworkImage(
                'https://i.ytimg.com/vi/O7ruiZ5m_JE/hqdefault.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            placeholder: AssetImage('assets/jar-loading.gif'),
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
