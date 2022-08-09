part of 'hot_and_new_bloc.dart';

@freezed
class HotAndNewState with _$HotAndNewState {
  const factory HotAndNewState({
    required List<Result> comingSoonList,
    required List<Result> everyOneWatchingList,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HotAndNewState.initial() => const HotAndNewState(
        comingSoonList: [],
        everyOneWatchingList: [],
        isLoading: false,
        hasError: false,
      );
}
