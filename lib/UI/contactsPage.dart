import 'package:flutter/material.dart';
import 'package:ui/Logic/uiComposer.dart';
import 'package:ui/Logic/navigate.dart';

class TincanContactsPage extends StatelessWidget {
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
          leading: BackButton(
            color: Colors.deepPurple,
            onPressed: () => Navigate.navigateBack(context),
          ),
          title: Text(
            'Friends',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.deepPurple,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.deepPurple,
              onPressed: () => {},
            ),
          ],
        ),
        body: ContactsPage(),
      ),
    );
  }
}

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UIComposer.composeFriendListWidget(),
    );
  }
}
