import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/hote_and_new/hotand_new_resp/hotand_new_resp.dart';

abstract class HotAndNewService {
  Future<Either<MainFailure, HotandNewResp>> getHotAndNewMovieData();

  Future<Either<MainFailure, HotandNewResp>> getHotAndNewTvData();
}
