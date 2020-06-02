import 'package:hive/hive.dart';

part 'track.g.dart';

@HiveType(typeId: 2)
class Track {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String artist;

  @HiveField(2)
  final DateTime streamedDate;

  @HiveField(3)
  final int streamerID;

  Track({
    this.name,
    this.artist,
    this.streamedDate,
    this.streamerID,
  });
}
