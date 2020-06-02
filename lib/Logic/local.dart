import 'package:hive/hive.dart';
import 'package:ui/DataLayer/user.dart';
import 'package:ui/Logic/cloud.dart';

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
}
