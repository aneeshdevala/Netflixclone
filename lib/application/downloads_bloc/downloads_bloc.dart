import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/downlods/i_downloads_repo.dart';
import 'package:netflix/domain/downlods/models/downloads.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

class DownloadsBloc extends Bloc<DownloadsEvent, DownloadState> {
  final IDownloadRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadState.initial()) {
    on<_GetDownloadsImage>((event, emit) async {
      emit(state.copyWith(isLoading: true, downloadsFailureOrSuccess: none()));
      final Either<MainFailure, List<Downloads>> dowlodsOption =
          await _downloadsRepo.getDownloadImages();
      emit(dowlodsOption.fold(
          (failure) => state.copyWith(
              isLoading: false, downloadsFailureOrSuccess: some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              downloads: success,
              downloadsFailureOrSuccess: Some(Right(success)))));
    });
  }
}
