import 'package:flutter/material.dart';
import 'package:ui/Logic/setupOrHome.dart';
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
        SetupOrHome.setupOrHome(context);
      } else {
        SnackBarComposer.composeSnackBar(globals.messeges[2], context);
      }
    } else {
      SnackBarComposer.composeSnackBar(globals.messeges[1], context);
    }
  }
}
