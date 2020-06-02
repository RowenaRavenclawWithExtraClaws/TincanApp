import 'package:hive/hive.dart';
import 'package:ui/DataLayer/track.dart';

part 'friend.g.dart';

@HiveType(typeId: 1)
class Friend {
  @HiveField(0)
  final String phone;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String avatarPath;

  @HiveField(3)
  List<Track> playbook = [];

  Friend({this.phone, this.name, this.avatarPath, this.playbook});

  static Friend friendFromMap(Map<String, dynamic> jsonObj) {
    Friend friend = new Friend(
        avatarPath: jsonObj['avatar'],
        name: jsonObj['name'],
        phone: jsonObj['phone']);

    Track track;

    for (dynamic trackItem in jsonObj['playbook']) {
      track = new Track(
          artist: trackItem['artist'],
          name: trackItem['name'],
          streamedDate: trackItem['streamedDate'],
          streamerID: trackItem['streamedID']);

      friend.playbook.add(track);
    }

    return friend;
  }
}
