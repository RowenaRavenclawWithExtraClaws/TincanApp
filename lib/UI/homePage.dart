import 'package:flutter/material.dart';
import 'package:ui/UI/contactsPage.dart';
import 'package:ui/Logic/navigate.dart';

class TincanHomePage extends StatelessWidget {
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
          title: Text(
            'Tincan',
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
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndx = 0;

  void onItemTapped(int indx) {
    setState(() {
      selectedIndx = indx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            title: Text('Friends'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic),
            title: Text('Concerts'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.surround_sound),
            title: Text('Parties'),
          ),
        ],
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepPurple,
        currentIndex: selectedIndx,
        onTap: onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigate.navigateTo(context, TincanContactsPage()),
      ),
      body: Scaffold(),
    );
  }
}
