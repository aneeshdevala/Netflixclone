part of 'downloads_bloc.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState({
    required bool isLoading,
    required List<Downloads>? downloads,
    required Option<Either<MainFailure, List<Downloads>>>
        downloadsFailureOrSuccess,
  }) = _DownloadState;

  factory DownloadState.initial() => const DownloadState(
      isLoading: false, downloads: [], downloadsFailureOrSuccess: None());
}
