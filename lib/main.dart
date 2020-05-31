import 'package:flutter/material.dart';
import 'package:ui/UI/welcomePage.dart';
import 'package:ui/Logic/fileHandler.dart';
import 'package:hive/hive.dart';
import 'package:ui/DataLayer/user.dart';

void main() async {
  runApp(TincanWelcomePage());

  final appDir = await FileHandler.localPath;

  Hive.init(appDir);
  Hive.registerAdapter(UserAdapter());
  Hive.openBox('user');
}
