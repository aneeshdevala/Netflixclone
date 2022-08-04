import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/downlods/i_downloads_repo.dart';
import 'package:netflix/domain/downlods/models/downloads.dart';

class DownloadsRepository implements IDownloadRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(response.data.map((e) => Downloads.fromJson(e)).toList());
      }
    } catch (e) {}
  }
}
