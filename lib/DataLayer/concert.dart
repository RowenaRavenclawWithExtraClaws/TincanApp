import 'package:ui/DataLayer/track.dart';
import 'package:ui/DataLayer/user.dart';

class Concert {
  final String name;
  final String avatar;
  final DateTime dateCreated;
  final User creator;
  final User admin;
  List<Track> playbook = [];

  Concert(
      {this.name,
      this.avatar,
      this.dateCreated,
      this.creator,
      this.admin,
      this.playbook});
}
