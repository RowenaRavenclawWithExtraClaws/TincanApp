import 'package:flutter/material.dart';
import 'package:ui/Logic/navigate.dart';
import 'package:ui/Logic/snackBarComposer.dart';
import 'package:ui/config.dart' as globals;

class VerifyCode {
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

  static void verify(String code, BuildContext context) {
    if (validateCode(code)) {
      if (authenticateCode(code)) {
        //navigate to either the setup page or the cans page
      } else {
        SnackBarComposer.composeSnackBar(globals.messege3, context);
      }
    } else {
      SnackBarComposer.composeSnackBar(globals.messege2, context);
    }
  }
}
