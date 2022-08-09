import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/hote_and_new/hot_and_new_services.dart';
import 'package:netflix/domain/hote_and_new/hotand_new_resp/hotand_new_resp.dart';

part 'homepage_event.dart';
part 'homepage_state.dart';
part 'homepage_bloc.freezed.dart';

@injectable
class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  final HotAndNewService _homeService;

  HomepageBloc(this._homeService) : super(HomepageState.initial()) {
    //get  homeScreen  data
    on<GetHomeScreenData>((event, emit) async {
      //send loading to ui

      emit(state.copyWith(isLoading: true, hasError: false));

      //get data
      final _movieResult = await _homeService.getHotAndNewMovieData();
      final _tvResult = await _homeService.getHotAndNewTvData();

      //transform data to state

      final _state1 = _movieResult.fold((MainFailure failure) {
        return HomepageState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearMovieList: [],
            treandingNowList: [],
            tensDramasMovieList: [],
            southIndianMovieList: [],
            trendingtvList: [],
            isLoading: false,
            hasError: true);
      }, (HotandNewResp resp) {
        final pastYear = resp.results;
        final trending = resp.results;
        final dramas = resp.results;
        final southindian = resp.results;

        pastYear.shuffle();
        trending.shuffle();
        dramas.shuffle();
        southindian.shuffle();
        return HomepageState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearMovieList: pastYear,
            treandingNowList: trending,
            tensDramasMovieList: dramas,
            southIndianMovieList: southindian,
            trendingtvList: state.trendingtvList,
            isLoading: false,
            hasError: false);
      });
      emit(_state1);

      final _state2 = _tvResult.fold((MainFailure failure) {
        return HomepageState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearMovieList: [],
            treandingNowList: [],
            tensDramasMovieList: [],
            southIndianMovieList: [],
            trendingtvList: [],
            isLoading: false,
            hasError: true);
      }, (HotandNewResp resp) {
        final top10List = resp.results;
        return HomepageState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearMovieList: state.pastYearMovieList,
            treandingNowList: state.treandingNowList,
            tensDramasMovieList: state.tensDramasMovieList,
            southIndianMovieList: state.southIndianMovieList,
            trendingtvList: top10List,
            isLoading: false,
            hasError: false);
      });

      //send data to ui
      emit(_state2);
    });
  }
}
