import 'package:ui/DataLayer/friends.dart';
import 'package:ui/DataLayer/concert.dart';
import 'package:ui/DataLayer/party.dart';

class User {
  final String phone;
  final String name;
  final String avatar;
  final List<Friend> friends;
  final List<Concert> concerts;
  final List<Party> parties;

  User(
      {this.phone,
      this.name,
      this.avatar,
      this.friends,
      this.concerts,
      this.parties});
}
