import 'package:http/http.dart' as http;
import 'package:ui/config.dart' as globals;
import 'package:ui/DataLayer/user.dart';
import 'dart:convert';
import 'package:ui/Logic/local.dart';

class CloudQuery {
  static User user;

  static Future<bool> findUser(String phoneNumber) async {
    final response = await http.get(
        'http://${globals.serverAddress}:${globals.portNumbers[3]}/${globals.routes[3]}/$phoneNumber');

    if (response.statusCode == 404) return false;

    Map<String, dynamic> userJson = jsonDecode(response.body);

    user = User.userFromMap(userJson);

    // in normal usage of the app, this function should save the new user locally

    return true;
  }

  static Future<void> addUser(User user, String extention) async {
    await http.post(
        'http://${globals.serverAddress}:${globals.portNumbers[1]}/${globals.routes[1]}',
        body: user.toJson(extention));

    return;
  }

  static Future<void> addFriends(String phoneList) async {
    await http.post(
        'http://${globals.serverAddress}:${globals.portNumbers[5]}/${globals.routes[5]}',
        body: {"phone": globals.phoneNumber, "phones": phoneList});

    return;
  }

  static Future<dynamic> fetchAvatars() async {
    List<String> avatarNames = LocalQuery.getAvatarNames();

    final response = await http.post(
        'http://${globals.serverAddress}:${globals.portNumbers[6]}/${globals.routes[6]}',
        body: json.encode(avatarNames));

    return json.decode(response.body);
  }
}
