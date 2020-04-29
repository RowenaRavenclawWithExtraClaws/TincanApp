import 'can.dart';
import 'plays.dart';

class CansPlaybook {
  final String id;
  final List<Can> sides;
  List<Plays> tracks;

  CansPlaybook({this.id, this.sides});
}
