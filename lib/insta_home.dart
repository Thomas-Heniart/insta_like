import 'package:flutter/material.dart';

import 'insta_body.dart';

class InstaHome extends StatelessWidget {
  final appBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.camera_alt),
    title: SizedBox(
      height: 35.0,
      child: Image.asset('assets/images/insta_logo.png'),
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: appBar,
      body: new InstaBody(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: new BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(icon: new Icon(Icons.home), onPressed: () {}),
              new IconButton(icon: new Icon(Icons.search), onPressed: null),
              new IconButton(icon: new Icon(Icons.add_box), onPressed: null),
              new IconButton(icon: new Icon(Icons.favorite), onPressed: null),
              new IconButton(
                  icon: new Icon(Icons.account_box), onPressed: null),
            ],
          ),
        ),
      ),
    );
  }
}
