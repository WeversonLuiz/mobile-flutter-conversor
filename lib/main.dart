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
      backgroundColor: Colors.blue,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {},),
      ],
    );

    Icon icon = Icon(Icons.wb_sunny, size: 120, color: Colors.amber,);
    TextStyle styleDecoration = TextStyle(color: Colors.blue, fontSize: 20);
    TextStyle styleField = TextStyle(color: Colors.black);

    TextField tempCelsius = TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "Temperatura em Celsius",
          labelStyle: styleDecoration,
      ),
      textAlign: TextAlign.center,
      style: styleField,
    );

    TextField tempFarenheit = TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "Temperatura em Farenheit",
          labelStyle: styleDecoration,
      ),
      textAlign: TextAlign.center,
      style: styleField,
    );

    Column column = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          icon, tempCelsius, tempFarenheit,
        ],
    );

    Scaffold scaffold = Scaffold(
      appBar: appBar,
      backgroundColor: Colors.white,
      body: column,
    );

    return scaffold;
  }
}
