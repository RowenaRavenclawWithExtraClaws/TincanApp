import 'package:http/http.dart' as http;
import 'package:ui/config.dart' as globals;
import 'package:ui/DataLayer/can.dart';

class Query {
  static Future<bool> findCan(String phoneNumber) async {
    final response = await http.get('http://' +
        globals.serverAddress +
        ':' +
        globals.portNumbers[2] +
        '/' +
        globals.routes[2] +
        '/' +
        phoneNumber);

    if (response.statusCode == 404) return false;
    return true;
  }

  static Future<void> addCan(Can can, String extention) async {
    await http.post(
        'http://' +
            globals.serverAddress +
            ':' +
            globals.portNumbers[1] +
            '/' +
            globals.routes[1],
        body: {
          "avatar": can.avatar,
          "name": can.name,
          "phone": can.phone,
          "extention": extention,
        });
  }
}
