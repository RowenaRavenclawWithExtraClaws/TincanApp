import 'package:ui/DataLayer/track.dart';
import 'package:ui/DataLayer/can.dart';

class Concert {
  final String name;
  final String avatar;
  final DateTime dateCreated;
  final Can creator;
  final Can admin;
  final List<Track> playbook;

  Concert({
    this.name,
    this.avatar,
    this.dateCreated,
    this.creator,
    this.admin,
    this.playbook,
  });
}
