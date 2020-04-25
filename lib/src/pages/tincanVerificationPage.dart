import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:ui/src/blocs/verifyHandler.dart';
import 'package:ui/src/blocs/welcomeToVerifyHandler.dart';
import 'package:ui/src/models/globals.dart' as globals;

class TincanVerificationPage extends StatelessWidget {
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
        body: VerificationPage(),
      ),
    );
  }
}

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
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
              '\n\n\n\n\n\n\n\n\n\n',
            ),
            Container(
              width: 300.0,
              child: PinCodeTextField(
                length: 6,
                animationType: AnimationType.scale,
                shape: PinCodeFieldShape.circle,
                activeColor: Colors.deepPurple,
                inactiveColor: Colors.black,
                controller: textFieldController,
                onChanged: (value) => {},
              ),
            ),
            Text(
              '\n',
            ),
            RaisedButton(
              child: Text(
                'Verify',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () =>
                  VerifyHandler.handle(textFieldController.text, context),
            ),
            RaisedButton(
                child: Text(
                  'Re-send',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  WelcomeToVerifyHandler.getCode(globals.phoneNumber);
                  WelcomeToVerifyHandler.composeSnackBar(
                      globals.messege4, context);
                }),
          ],
        ),
      ),
    );
  }
}
