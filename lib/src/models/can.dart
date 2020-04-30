import 'package:image/image.dart';

class Can {
  final int id;
  final String phone;
  String name;
  Image avatar;
  List<int> roomIDs;
  List<int> concertIDs;
  List<int> partyIDs;

  Can({
    this.id,
    this.phone,
    this.name,
    this.avatar,
    this.roomIDs,
    this.concertIDs,
    this.partyIDs,
  });
}
