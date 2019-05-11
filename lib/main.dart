import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  //debugShowCheckedModeBanner: false,
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text("Conversor de Temperatura"),
      centerTitle: true,
      backgroundColor: Colors.amber,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {},),
      ],
    );

    Scaffold scaffold = Scaffold(
      appBar: appBar,
    );

    return scaffold;
  }
}