import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ui/config.dart' as globals;
import 'package:ui/Logic/setupToHome.dart';
import 'dart:io';

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
  File _img;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _img = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textFieldController = TextEditingController();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: ExactAssetImage('assets/images/avatar.png'),
                child: _img == null ? Text('') : Image.file(_img),
              ),
              onTap: getImage,
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
                controller: textFieldController,
              ),
            ),
            RaisedButton(
              child: Text(
                "Let's dance",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () => SetupToHome.registerCan(
                  globals.phoneNumber, textFieldController.text, _img),
            )
          ],
        ),
      ),
    );
  }
}
