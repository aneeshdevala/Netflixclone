import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/hote_and_new/hot_and_new_services.dart';
import 'package:netflix/domain/hote_and_new/hotand_new_resp/hotand_new_resp.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final HotAndNewService _hotAndNewService;
  HotAndNewBloc(this._hotAndNewService) : super(HotAndNewState.initial()) {
    //get new and movie data
    on<LoadDatainComingSoon>((event, emit) async {
//send loading to ui
      emit(const HotAndNewState(
          comingSoonList: [],
          everyOneWatchingList: [],
          isLoading: true,
          hasError: false));
//get data from remote
      final _result = await _hotAndNewService.getHotAndNewMovieData();

      //data to state

      final newState = _result.fold((MainFailure failure) {
        return const HotAndNewState(
          comingSoonList: [],
          everyOneWatchingList: [],
          isLoading: false,
          hasError: true,
        );
      }, (HotandNewResp resp) {
        return HotAndNewState(
          comingSoonList: resp.results,
          everyOneWatchingList: state.everyOneWatchingList,
          isLoading: false,
          hasError: false,
        );
      });
      emit(newState);
    });

    //get new and tv data
    on<LoadDataInEveryOneWatching>((event, emit) async {
      emit(const HotAndNewState(
          comingSoonList: [],
          everyOneWatchingList: [],
          isLoading: true,
          hasError: false));
//get data from remote
      final _result = await _hotAndNewService.getHotAndNewTvData();

      //data to state

      final newState1 = _result.fold((MainFailure failure) {
        return const HotAndNewState(
          comingSoonList: [],
          everyOneWatchingList: [],
          isLoading: false,
          hasError: true,
        );
      }, (HotandNewResp resp) {
        return HotAndNewState(
          comingSoonList: state.comingSoonList,
          everyOneWatchingList: resp.results,
          isLoading: false,
          hasError: false,
        );
      });
      log(newState1.toString());
      emit(newState1);
    });
  }
}
