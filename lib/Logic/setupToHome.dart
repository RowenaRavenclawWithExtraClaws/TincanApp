import 'package:ui/DataLayer/can.dart';
import 'dart:io';
import 'dart:convert';
import 'package:ui/Logic/query.dart';

class SetupToHome {
  static Can makeCan(String canPhone, String canName, File canAvatar) {
    Can newCan = Can(
      avatar: base64Encode(canAvatar.readAsBytesSync()),
      name: canName,
      phone: canPhone,
    );

    return newCan;
  }

  static void registerCan(
      String canPhone, String canName, File canAvatar) async {
    Can newCan = makeCan(canPhone, canName, canAvatar);
    String extention = canAvatar.path.substring(
        canAvatar.path.length - 3); // the image extention for server storage

    await Query.addCan(newCan, extention);

    // do something.
  }
}
