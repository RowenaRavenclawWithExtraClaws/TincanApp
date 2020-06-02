// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TrackAdapter extends TypeAdapter<Track> {
  @override
  final typeId = 2;

  @override
  Track read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Track(
      name: fields[0] as String,
      artist: fields[1] as String,
      streamedDate: fields[2] as DateTime,
      streamerID: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Track obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.artist)
      ..writeByte(2)
      ..write(obj.streamedDate)
      ..writeByte(3)
      ..write(obj.streamerID);
  }
}
