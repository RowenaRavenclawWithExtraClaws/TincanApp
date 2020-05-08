import 'package:flutter/material.dart';

class SnackBarComposer {
  static void composeSnackBar(String messege, BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(messege),
      backgroundColor: Colors.deepPurple,
    ));
  }
}
