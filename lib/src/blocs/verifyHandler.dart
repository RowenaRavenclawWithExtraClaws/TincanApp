import 'package:flutter/material.dart';
import 'package:ui/src/models/globals.dart' as globals;

class VerifyHandler {
  static bool validateCode(String code) {
    if (code.isEmpty) {
      return false;
    }

    if (code.length < 6) {
      return false;
    }

    return true;
  }

  static bool authenticateCode(String code) {
    if (code == globals.verificationCode) {
      return true;
    }
    return false;
  }

  static void composeSnackBar(String messege, BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(messege),
      backgroundColor: Colors.deepPurple,
    ));
  }

  static void navigateTo(StatelessWidget page, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }

  static void handle(String code, BuildContext context) {
    if (validateCode(code)) {
      if (authenticateCode(code)) {
        //navigate to either the setup page or the cans page
      } else {
        composeSnackBar(globals.messege3, context);
      }
    } else {
      composeSnackBar(globals.messege2, context);
    }
  }
}
