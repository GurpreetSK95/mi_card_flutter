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
          child: BusinessCard(),
        ),
      ),
    );
  }
}

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage(
            "images/DP.png",
          ),
        ),
        Text(
          "Gurpreet Singh",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: "Pacifico",
          ),
        ),
        Text(
          "MOBILE DEVELOPER",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
            fontWeight: FontWeight.w300,
            letterSpacing: 1.5,
          ),
        ),
        SizedBox(
          height: 20.0,
          child: Divider(
            color: Colors.teal.shade100,
            indent: 80.0,
            endIndent: 80.0,
          ),
        ),
        CallContactCard(),
        MailContactCard()
      ],
    );
  }
}

class MailContactCard extends StatelessWidget {
  const MailContactCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 10.0,
      ),
      child: ListTile(
        title: Text("gurpreetsk1@gmail.com"),
        leading: Icon(
          Icons.mail,
          color: Colors.teal,
        ),
      ),
    );
  }
}

class CallContactCard extends StatelessWidget {
  const CallContactCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 10.0,
      ),
      child: ListTile(
          leading: Icon(
            Icons.call,
            color: Colors.teal,
          ),
          title: Text(
            "+91-9971897557",
          )),
    );
  }
}
