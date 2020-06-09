import 'dart:io';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:ui/DataLayer/listItem.dart';

class Audio {
  List<SongInfo> _tracks;

  Audio() {
    _tracks = new List<SongInfo>();
  }

  Future<void> setTracks() async {
    _tracks = await FlutterAudioQuery().getSongs();
  }

  int getNoOfTracks() {
    return _tracks.length;
  }

  List<TrackItem> getTrackItemList() {
    List<TrackItem> trackList = new List<TrackItem>();

    _tracks.forEach((info) {
      trackList.add(new TrackItem(
        trackName: info.title,
        artistName: info.artist,
      ));
    });

    return trackList;
  }
}
