import 'package:flutter/material.dart';
import 'package:ui/Bloc/welcomeToVerifyHandler.dart';

class TincanWelcomePage extends StatelessWidget {
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
        body: WelcomePage(),
      ),
    );
  }
}

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Tincan',
              style: TextStyle(
                fontSize: 36.0,
                color: Colors.deepPurple,
              ),
            ),
            Text(
              'Listen, stream and live in the moment',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.deepPurple,
              ),
            ),
            Text(
              // this widget is used only for spacing between these colmn widgets.
              '\n\n\n\n\n\n\n\n\n\n',
            ),
            Container(
              width: 300.0,
              child: TextField(
                maxLength: 13,
                textAlign: TextAlign.center,
                cursorColor: Colors.deepPurple,
                keyboardType: TextInputType.phone,
                controller: textFieldController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone number',
                ),
                style: TextStyle(
                  color: Colors.deepPurple,
                ),
              ),
            ),
            RaisedButton(
              child: Text(
                'Proceed',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () => WelcomeToVerifyHandler.handle(
                  textFieldController.text, context),
            ),
          ],
        ),
      ),
    );
  }
}
