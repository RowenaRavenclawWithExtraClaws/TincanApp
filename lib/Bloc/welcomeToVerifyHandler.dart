import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ui/UI/tincanVerificationPage.dart';
import 'package:ui/models/globals.dart' as globals;

class WelcomeToVerifyHandler {
  static String phoneNumber;

  static bool validatePhoneNumber() {
    if (phoneNumber.isEmpty) {
      return false;
    }

    if (phoneNumber.length < 13) {
      return false;
    }

    // for now, this is only valid for Egyptian carriers.
    if (phoneNumber.startsWith('+201') == false) {
      return false;
    }

    return true;
  }

  static bool navigateToVerificationPage(BuildContext context) {
    if (validatePhoneNumber()) {
      globals.phoneNumber = phoneNumber;

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => TincanVerificationPage(),
        ),
      );

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

  static getCode(String phoneNumber) async {
    final response = await http.post(
      // this can vary according to the server and the machine.
      'http://' + globals.serverAddress + ':' + globals.portNumber + '/',
      body: phoneNumber,
    );

    if (response.statusCode == 200) {
      globals.verificationCode = response.body;
    }
  }

  static handle(String phoneNum, BuildContext context) async {
    phoneNumber = phoneNum;

    if (navigateToVerificationPage(context)) {
      await getCode(phoneNumber);
    } else {
      composeSnackBar(globals.messege1, context);
    }
  }
}
