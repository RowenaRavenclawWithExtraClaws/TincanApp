import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';

class FileHandler {
  static Future<String> get localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  static Future<File> localFile(String fileName) async {
    final path = await localPath;

    return File('$path/$fileName');
  }

  static Future<void> createDir(String dirName) async {
    final appDir = await localPath;
    final dir = Directory('$appDir/$dirName');

    if (await dir.exists()) return;

    dir.create(recursive: true);

    return;
  }

  static Future<void> saveImg(dynamic fileName, dynamic content) async {
    File file = await FileHandler.localFile(fileName);

    file.writeAsBytes(content);

    return;
  }

  static Future<FileImage> readImg(String fileName) async {
    final file = await localFile(fileName);

    return FileImage(file);
  }
}
