import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class PDFApi {
  static Future<File> loadAsset({required String path}) async {
    final data = await rootBundle.load(path);
    var bytes = data.buffer.asUint8List();
    return _storeFile(path, bytes);
  }

  static Future<File> _storeFile(String url, List<int> bytes) async {
    var fileName = basename(url);
    var dir = await getApplicationDocumentsDirectory();
    File file = File("${dir.path}/$fileName");
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }
}
