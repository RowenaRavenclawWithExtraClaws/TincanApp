import 'can.dart';
import 'track.dart';
import 'package:image/image.dart';

class Concert {
  final int id;
  String name;
  final DateTime dateCreated;
  Image avatar;
  final Can creator;
  Can admin;
  List<int> audianceIDs;
  List<int> trackIDs;

  Concert({
    this.id,
    this.name,
    this.dateCreated,
    this.avatar,
    this.creator,
    this.admin,
    this.audianceIDs,
    this.trackIDs,
  });
}
