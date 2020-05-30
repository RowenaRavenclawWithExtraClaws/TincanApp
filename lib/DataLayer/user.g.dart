// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final typeId = 0;

  @override
  User read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      phone: fields[0] as String,
      name: fields[1] as String,
      avatar: fields[2] as String,
    )
      ..friends = (fields[3] as List)?.cast<Friend>()
      ..concerts = (fields[4] as List)?.cast<Concert>()
      ..parties = (fields[5] as List)?.cast<Party>();
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.phone)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.avatar)
      ..writeByte(3)
      ..write(obj.friends)
      ..writeByte(4)
      ..write(obj.concerts)
      ..writeByte(5)
      ..write(obj.parties);
  }
}
