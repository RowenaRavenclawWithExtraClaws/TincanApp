// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FriendAdapter extends TypeAdapter<Friend> {
  @override
  final typeId = 1;

  @override
  Friend read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Friend(
      phone: fields[0] as String,
      name: fields[1] as String,
      avatarPath: fields[2] as String,
      playbook: (fields[3] as List)?.cast<Track>(),
    );
  }

  @override
  void write(BinaryWriter writer, Friend obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.phone)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.avatarPath)
      ..writeByte(3)
      ..write(obj.playbook);
  }
}
