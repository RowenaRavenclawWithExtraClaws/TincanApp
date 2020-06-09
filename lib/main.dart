import 'package:flutter/material.dart';
import 'package:ui/UI/homePage.dart';
import 'package:ui/Logic/fileHandler.dart';
import 'package:hive/hive.dart';
import 'package:ui/DataLayer/user.dart';
import 'package:ui/DataLayer/friend.dart';
import 'package:ui/DataLayer/track.dart';
import 'package:ui/Logic/audio.dart';
import 'package:ui/config.dart' as globals;

void main() async {
  runApp(TincanHomePage());

  final appDir = await FileHandler.localPath;

  Hive.init(appDir);
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(FriendAdapter());
  Hive.registerAdapter(TrackAdapter());
  Hive.openBox('user');

  FileHandler.createDir('avatars');
  FileHandler.createDir('avatars/users');

  if (globals.audio == null) globals.audio = new Audio();
  await globals.audio.setTracks();
}
