import 'dart:io';

import 'package:keep_note/domain/util/result.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

abstract class ImageRepository {
  Future<Result<File>> saveImageFileToAppDirectory(File imageFile);
  Future<Result<File>> getImageFile(String fileName);
}
