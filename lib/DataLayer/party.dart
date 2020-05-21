import 'package:ui/DataLayer/track.dart';
import 'package:ui/DataLayer/can.dart';

class Party {
  final String name;
  final String avatar;
  final DateTime dateCreated;
  final Can creator;
  final List<Can> admins;
  final List<Track> playbook;

  Party({
    this.name,
    this.avatar,
    this.dateCreated,
    this.creator,
    this.admins,
    this.playbook,
  });
}
