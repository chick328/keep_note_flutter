import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

import '../domain/image_repository.dart';
import '../domain/util/result.dart';

class ImageRepositoryImpl extends ImageRepository {
  @override
  Future<Result<File>> saveImageFileToAppDirectory(File imageFile) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final fileExtension = path.extension(imageFile.path);
      final fileName = path.basename(
        DateTime.now().millisecondsSinceEpoch.toString(),
      );
      final localFilePath = '${directory.path}/$fileName$fileExtension';

      final File localImageFile = await imageFile.copy(localFilePath);
      return Result.success(localImageFile);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<File>> getImageFile(String fileName) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final String fullPath = path.join(directory.path, fileName);
      final File file = File(fullPath);

      if (await file.exists()) {
        return Result.success(file);
      }
      return Result.error(Exception("File not found"));
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
