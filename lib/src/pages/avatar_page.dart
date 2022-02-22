import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.geekmi.news/__export/1640704753997/sites/debate/img/2021/12/28/nezuko.jpg_976912859.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('NK'),
              backgroundColor: Colors.pinkAccent,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage("https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/950/public/media/image/2021/06/demon-slayer-kimetsu-no-yaiba-nezuko-kamado-2384871.jpg?itok=E3pRMoQI"),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}