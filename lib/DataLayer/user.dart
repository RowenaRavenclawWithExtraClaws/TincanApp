import 'package:ui/DataLayer/friends.dart';
import 'package:ui/DataLayer/concert.dart';
import 'package:ui/DataLayer/party.dart';

class User {
  final String phone;
  final String name;
  final String avatar;
  List<Friend> friends = [];
  List<Concert> concerts = [];
  List<Party> parties = [];

  User({
    this.phone,
    this.name,
    this.avatar,
  });

  Map toJson(String extention) => {
        "phone": this.phone,
        "name": this.name,
        "avatar": this.avatar,
        "extention": extention
      };
}
