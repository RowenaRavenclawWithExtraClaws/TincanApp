import 'package:flutter/material.dart';
import 'package:ui/UI/welcomePage.dart';
import 'package:ui/Logic/fileHandler.dart';
import 'package:hive/hive.dart';
import 'package:ui/DataLayer/user.dart';
import 'package:ui/DataLayer/friend.dart';
import 'package:ui/DataLayer/track.dart';

void main() async {
  runApp(TincanWelcomePage());

  final appDir = await FileHandler.localPath;

  Hive.init(appDir);
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(FriendAdapter());
  Hive.registerAdapter(TrackAdapter());
  Hive.openBox('user');

  FileHandler.createDir('avatars');
  FileHandler.createDir('avatars/users');
}
