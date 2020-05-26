import 'package:ui/DataLayer/track.dart';

class Friend {
  final String phone;
  final String name;
  final String avatar;
  List<Track> playbook = [];

  Friend({this.phone, this.name, this.avatar, this.playbook});
}
