import 'package:ui/DataLayer/track.dart';
import 'package:ui/DataLayer/user.dart';

class Party {
  final String name;
  final String avatar;
  final DateTime dateCreated;
  final User creator;
  List<User> admins = [];
  List<Track> playbook = [];

  Party({
    this.name,
    this.avatar,
    this.dateCreated,
    this.creator,
    this.admins,
    this.playbook,
  });
}
