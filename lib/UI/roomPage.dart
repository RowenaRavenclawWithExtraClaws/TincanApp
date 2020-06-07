import 'package:flutter/material.dart';
import 'package:ui/Logic/navigate.dart';
import 'package:ui/config.dart' as globals;

class TincanRoomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tincan',
      theme: ThemeData(
        accentColor: Colors.deepPurple,
        buttonColor: Colors.deepPurple,
        primarySwatch: Colors.deepPurple,
        dividerColor: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.deepPurple,
            onPressed: () => Navigate.navigateBack(context),
          ),
          title: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: FileImage(globals.friendItem.avatar),
              ),
              SizedBox(width: 8.0),
              Text(
                globals.friendItem.friendName,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            PopupMenuButton(
              icon: Icon(
                Icons.menu,
                color: Colors.deepPurple,
              ),
              itemBuilder: (context) {
                List<PopupMenuEntry> l = new List<PopupMenuEntry>();
                return l;
              },
            ),
          ],
        ),
        body: RoomPage(),
      ),
    );
  }
}

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(),
          ),
          Row(
            children: <Widget>[
              Container(
                width: 300,
                height: 70,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 8.0),
                    Icon(
                      Icons.search,
                      size: 30.0,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: TextField(
                        cursorColor: Colors.deepPurple,
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 18.0,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Search a track',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              GestureDetector(
                onTap: () => {},
                child: CircleAvatar(
                  child: Icon(Icons.add),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              GestureDetector(
                onTap: () => {},
                child: CircleAvatar(
                  child: Icon(Icons.file_upload),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
