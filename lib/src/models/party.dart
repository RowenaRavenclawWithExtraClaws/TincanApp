import 'can.dart';
import 'plays.dart';
import 'package:image/image.dart';

class Concert {
  final String id;
  String name;
  final DateTime dateCreated;
  Image avatar;
  final Can creator;
  List<Can> admins;
  List<Can> audiance;
  List<Plays> playbook;

  Concert(
      {this.id,
      this.name,
      this.dateCreated,
      this.avatar,
      this.creator,
      this.admins,
      this.audiance});
}
