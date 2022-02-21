import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cards'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _cardTipo1()
          ],
        ),
    );
  }
  Widget _cardTipo1(){
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.pinkAccent),
            title: Text('Soy el título de esta tarjeta.'),
            subtitle: Text('Esta descripción de la tarjeta fue elaborada por Hilda Yaroslavi Pech López.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: Text('Cancelar'),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text('Ok'),
                  onPressed: () {},
                )
              ],
            )
        ],
      ),
    );
  }
}