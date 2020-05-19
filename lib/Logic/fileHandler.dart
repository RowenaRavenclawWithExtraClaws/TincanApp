import 'dart:async';
import 'dart:io';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';

class FileHander {
  static Future<String> get localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  static Future<File> localFile(String fileName) async {
    final path = await localPath;
    return File(path + '/' + fileName);
  }

  static Future<void> writeImg(File img, String fileName) async {
    final path = await localPath;
    await img.copy(path + '/' + fileName);
  }

  static Future<FileImage> readImg(String fileName) async {
    final file = await localFile(fileName);
    return FileImage(file);
  }
}
