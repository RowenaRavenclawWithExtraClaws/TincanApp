import 'package:flutter/material.dart';
import 'package:ui/UI/verificationPage.dart';
import 'package:ui/Logic/verifyPhone.dart';
import 'package:ui/Logic/getCode.dart';
import 'package:ui/Logic/navigate.dart';
import 'package:ui/Logic/uiComposer.dart';
import 'package:ui/config.dart' as globals;

class WelcomeToVerify {
  static navigateToVerificationPage(BuildContext context, String phone) {
    if (VerifyPhone.validatePhoneNumber(phone)) {
      globals.phoneNumber = phone;

      GetCode.getCode(phone);

      Navigate.navigateTo(context, TincanVerificationPage());
    } else {
      UIComposer.composeSnackBar(globals.messeges[0], context);
    }
  }
}
