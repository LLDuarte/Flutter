import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: 'Contador de Pessoas', //
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = "Pode entrar!";

  void _changePeople(int delta) {
    setState(() {
      _people += delta;

      if (_people < 0) {
        _infoText = "Mundo invertido?";
      } else {
        _infoText = "Pode entrar!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Pessoas: $_people", style: TextStyle(color: Colors.white)),
            Row(
              children: <Widget>[
                Padding(
                    child: FlatButton(
                      child: Text(
                        "+1",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      onPressed: () {
                        _changePeople(1);
                      },
                    ),
                    padding: EdgeInsets.all(10)),
                Padding(
                    child: FlatButton(
                      child: Text(
                        "-1",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      onPressed: () {
                        _changePeople(-1);
                      },
                    ),
                    padding: EdgeInsets.all(10))
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Text(_infoText, style: TextStyle(color: Colors.white, fontSize: 20))
          ],
        )
      ],
    );
  }
}
