import 'can.dart';
import 'track.dart';
import 'package:image/image.dart';

class Concert {
  final String id;
  String name;
  final DateTime dateCreated;
  Image avatar;
  final Can creator;
  Can admin;
  List<Can> audiance;
  List<Track> playbook;

  Concert(
      {this.id,
      this.name,
      this.dateCreated,
      this.avatar,
      this.creator,
      this.admin,
      this.audiance});
}
