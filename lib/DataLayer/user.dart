import 'package:hive/hive.dart';
import 'package:ui/DataLayer/friends.dart';
import 'package:ui/DataLayer/concert.dart';
import 'package:ui/DataLayer/party.dart';

part 'user.g.dart';

@HiveType(typeId: 0)
class User {
  @HiveField(0)
  final String phone;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String avatar;

  @HiveField(3)
  List<Friend> friends = [];

  @HiveField(4)
  List<Concert> concerts = [];

  @HiveField(5)
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
