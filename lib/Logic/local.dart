import 'package:hive/hive.dart';
import 'package:ui/DataLayer/user.dart';

class Query {
  static Box userBox = Hive.box('user');

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
