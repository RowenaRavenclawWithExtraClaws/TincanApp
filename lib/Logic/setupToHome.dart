import 'package:ui/DataLayer/user.dart';
import 'dart:io';
import 'dart:convert';
import 'package:ui/Logic/cloud.dart';
import 'package:ui/Logic/local.dart';
import 'package:ui/Logic/getPhoneList.dart';

class SetupToHome {
  static Future<void> registerCan(
      String userPhone, String userName, File userAvatar) async {
    String avatarImg = base64Encode(userAvatar.readAsBytesSync());

    User user = new User(phone: userPhone, name: userName, avatar: avatarImg);

    String extention = userAvatar.path.substring(
        userAvatar.path.length - 3); // the image extention for server storage

    await CloudQuery.addUser(user, extention);

    String phoneList = await GetPhoneList.getPhoneList();

    CloudQuery.addFriends(phoneList);

    LocalQuery.saveUser();

    return;
  }
}
