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

  TextEditingController celsiusController = TextEditingController();
  TextEditingController farenheitController = TextEditingController();

  void _resetFields() {
    celsiusController.text = "";
    farenheitController.text = "";
  }

  @override
  Widget build(BuildContext context) {

    AppBar appBar = AppBar(
      title: Text("Conversor de Temperatura"),
      centerTitle: true,
      backgroundColor: Colors.blue,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: _resetFields,),
      ],
    );

    Icon icon = Icon(Icons.wb_sunny, size: 120, color: Colors.amber,);
    TextStyle styleDecoration = TextStyle(color: Colors.blue, fontSize: 20);
    TextStyle styleField = TextStyle(color: Colors.black);

    RaisedButton raisedButton = RaisedButton(
      onPressed: () {},
      child: Text("Calcular"),
      color: Colors.blueAccent,
    );

    Container containerBtn = Container(
      height: 200,
      child: raisedButton,
    );

    Padding padding = Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: containerBtn,
    );

    TextField tempCelsius = TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "Temperatura em Celsius",
          labelStyle: styleDecoration,
      ),
      textAlign: TextAlign.center,
      style: styleField,
      controller: celsiusController,
    );

    TextField tempFarenheit = TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "Temperatura em Farenheit",
          labelStyle: styleDecoration,
      ),
      textAlign: TextAlign.center,
      style: styleField,
      controller: farenheitController,
    );

    Column column = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          icon, tempCelsius, tempFarenheit, padding,
        ],
    );

    SingleChildScrollView singleChildScrollView = SingleChildScrollView(
      child: column,
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
    );

    Scaffold scaffold = Scaffold(
      appBar: appBar,
      backgroundColor: Colors.white,
      body: singleChildScrollView,
    );

    return scaffold;
  }
}
