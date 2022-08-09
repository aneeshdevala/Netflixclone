part of 'homepage_bloc.dart';

@freezed
class HomepageState with _$HomepageState {
  const factory HomepageState({
    required String stateId,
    required List<Result> pastYearMovieList,
    required List<Result> treandingNowList,
    required List<Result> tensDramasMovieList,
    required List<Result> southIndianMovieList,
    required List<Result> trendingtvList,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HomepageState.initial() => const HomepageState(
        stateId: '0',
        pastYearMovieList: [],
        treandingNowList: [],
        tensDramasMovieList: [],
        southIndianMovieList: [],
        trendingtvList: [],
        isLoading: false,
        hasError: false,
      );
}
