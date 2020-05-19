import 'package:http/http.dart' as http;
import 'package:ui/config.dart' as globals;

class GetCode {
  static getCode(String phoneNumber) async {
    final response = await http.post(
      // this can vary according to the server and the machine.
      'http://' +
          globals.serverAddress +
          ':' +
          globals.portNumbers[0] +
          '/' +
          globals.routes[0],
      body: phoneNumber,
    );

    if (response.statusCode == 200) {
      globals.verificationCode = response.body;
    }
  }
}
