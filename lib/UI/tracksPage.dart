import 'package:flutter/material.dart';
import 'package:ui/Logic/navigate.dart';
import 'package:ui/Logic/uiComposer.dart';

class TincanTracksPage extends StatelessWidget {
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
            'Tracks',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.deepPurple,
            ),
          ),
        ),
        body: TracksPage(),
      ),
    );
  }
}

class TracksPage extends StatefulWidget {
  @override
  _TracksPageState createState() => _TracksPageState();
}

class _TracksPageState extends State<TracksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UIComposer.composeTrackListWidget(),
    );
  }
}
