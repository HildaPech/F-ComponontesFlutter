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
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2()
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

  Widget _cardTipo2(){
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
              image: NetworkImage('http://www.solofondos.com/wp-content/uploads/2016/04/mountain-landscape-wallpaper.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 300.0,
              fit: BoxFit.cover,
          ),
          //Image(
          //  image: NetworkImage('http://www.solofondos.com/wp-content/uploads/2016/04/mountain-landscape-wallpaper.jpg'),
          //),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Imágen de un paisaje')
          )
        ],
      ),
    );
  }
}