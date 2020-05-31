import 'package:ui/DataLayer/track.dart';

class Friend {
  final String phone;
  final String name;
  final String avatarPath;
  List<Track> playbook = [];

  Friend({this.phone, this.name, this.avatarPath, this.playbook});
}
