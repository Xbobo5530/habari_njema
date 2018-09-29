import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MICC'),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
              'https://scontent.fdar4-1.fna.fbcdn.net/v/t1.0-9/42625756_1698946900234703_192845234181242880_o.jpg?_nc_cat=106&_nc_eui2=AeE7Rv6BKOE0i4vOiME9mi0BpILX2M6sUL355ucAv5Z4CWGjgQnnY0_WQOdjOVfyyu0aiyBR2aBMmsykxE1ii2ilwwbO4cPKh_0W3xDalB4Dd3ZBH0do5M88ybxD6IvrJKI&oh=b43f75b446471bf7b6ff40f2d3f6d6aa&oe=5C61A0F3'),
          ListTile(
              title: Text(
                  'Mwanza International Community Church(MICC): Ministers to the Local and the International Community in the City of Mwanza')),
          ListTile(
            title: Text(
                'To form a biblical community of believers that will influence the world for Christ Jesus.'),
            subtitle: Text('Mission'),
          )
        ],
      ),
    );
  }
}
