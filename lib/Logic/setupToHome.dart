import 'package:ui/DataLayer/user.dart';
import 'dart:io';
import 'dart:convert';
import 'package:ui/Logic/query.dart';

class SetupToHome {
  static void registerCan(
      String userPhone, String userName, File userAvatar) async {
    User user = new User(
        phone: userPhone,
        name: userName,
        avatar: base64Encode(userAvatar.readAsBytesSync()));

    String extention = userAvatar.path.substring(
        userAvatar.path.length - 3); // the image extention for server storage

    await Query.addUser(user, extention);

    // do something.
  }
}
