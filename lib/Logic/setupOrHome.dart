import 'package:flutter/material.dart';
import 'package:ui/config.dart' as globals;
import 'package:ui/Logic/query.dart';
import 'package:ui/Logic/navigate.dart';
import 'package:ui/UI/setupPage.dart';
import 'package:ui/UI/homePage.dart';

class SetupOrHome {
  static Future<void> setupOrHome(BuildContext context) async {
    Query.findCan(globals.phoneNumber).then((value) {
      if (value) {
        Navigate.navigateTo(context, TincanSetupPage());
      } else {
        Navigate.navigateTo(context, TincanSetupPage());
      }
      globals.logged = true;
    });
  }
}
