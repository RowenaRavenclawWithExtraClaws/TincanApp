import 'dart:io';

import 'package:flutter/material.dart';

class TincanSetupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tincan',
      theme: ThemeData(
        accentColor: Colors.deepPurple,
        buttonColor: Colors.deepPurple,
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Tincan',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.deepPurple,
            ),
          ),
        ),
        body: SetupPage(),
      ),
    );
  }
}

class SetupPage extends StatefulWidget {
  @override
  _SetupPageState createState() => _SetupPageState();
}

class _SetupPageState extends State<SetupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              child: RaisedButton(
                child: Icon(
                  Icons.add_a_photo,
                  color: Colors.white,
                ),
                shape: CircleBorder(),
                onPressed: () => {},
              ),
            ),
            Text(
              // this widget is used only for spacing between these colmn widgets.
              '\n',
            ),
            Container(
              width: 300,
              child: TextField(
                maxLength: 26,
                textAlign: TextAlign.center,
                cursorColor: Colors.deepPurple,
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 26,
                ),
              ),
            ),
            RaisedButton(
              child: Text(
                "Let's dance",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () => {},
            )
          ],
        ),
      ),
    );
  }
}
