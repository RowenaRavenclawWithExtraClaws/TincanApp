import 'package:flutter/material.dart';
import 'package:ui/config.dart' as globals;
import 'package:ui/Logic/cloud.dart';
import 'package:ui/Logic/local.dart';
import 'package:ui/Logic/navigate.dart';
import 'package:ui/UI/setupPage.dart';

class SetupOrHome {
  static Future<void> setupOrHome(BuildContext context) async {
    bool found = await CloudQuery.findUser(globals.phoneNumber);

    if (found) {
      CloudQuery.fetchAvatars();
    } else {
      Navigate.navigateTo(context, TincanSetupPage());
    }

    globals.logged = true;
  }
}
