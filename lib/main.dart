import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: BodyWidget(),
          left: false,
          right: false,
        ),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          color: Colors.red,
          width: 100.0,
        ),
        SquareWidgetWithShadow(),
        Container(
          color: Colors.blue,
          width: 100.0,
        ),
      ],
    );
  }
}

class SquareWidgetWithShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 100.0,
          height: 100.0,
          color: Colors.yellow,
        ),
        Container(
          width: 100.0,
          height: 100.0,
          color: Colors.yellow[300].withAlpha(70),
        )
      ],
    );
  }
}
