import 'package:hive/hive.dart';
import 'package:ui/DataLayer/user.dart';
import 'package:ui/Logic/cloud.dart';
import 'package:ui/Logic/fileHandler.dart';
import 'dart:convert';

class LocalQuery {
  static Box userBox = Hive.box('user');

  static void saveUser() {
    userBox.add(CloudQuery.user);

    return;
  }

  static User getUser() {
    final user = userBox.get(0);

    return user;
  }

  static List getFriends() {
    final user = getUser();
    final friendList = user.friends;

    return friendList;
  }

  static List<String> getAvatarNames() {
    final user = getUser();
    List<String> avatarNames = [];

    avatarNames.add(user.avatar);

    user.friends.map((friend) => avatarNames.add(friend.avatarPath)).toList();

    return avatarNames;
  }

  static Future<void> saveAvatarImages(
      Map<dynamic, dynamic> phoneToStr64, dynamic dirPath) async {
    Map<dynamic, dynamic> phoneToUint = {};

    phoneToStr64.forEach((key, value) {
      phoneToUint[key] = base64Decode(value);
    });

    phoneToUint.forEach((key, value) async {
      await FileHandler.saveImg('$dirPath/$key', value);
    });

    return;
  }
}
