// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'homepage_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomepageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeScreenData value) getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomepageEventCopyWith<$Res> {
  factory $HomepageEventCopyWith(
          HomepageEvent value, $Res Function(HomepageEvent) then) =
      _$HomepageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomepageEventCopyWithImpl<$Res>
    implements $HomepageEventCopyWith<$Res> {
  _$HomepageEventCopyWithImpl(this._value, this._then);

  final HomepageEvent _value;
  // ignore: unused_field
  final $Res Function(HomepageEvent) _then;
}

/// @nodoc
abstract class _$$GetHomeScreenDataCopyWith<$Res> {
  factory _$$GetHomeScreenDataCopyWith(
          _$GetHomeScreenData value, $Res Function(_$GetHomeScreenData) then) =
      __$$GetHomeScreenDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeScreenDataCopyWithImpl<$Res>
    extends _$HomepageEventCopyWithImpl<$Res>
    implements _$$GetHomeScreenDataCopyWith<$Res> {
  __$$GetHomeScreenDataCopyWithImpl(
      _$GetHomeScreenData _value, $Res Function(_$GetHomeScreenData) _then)
      : super(_value, (v) => _then(v as _$GetHomeScreenData));

  @override
  _$GetHomeScreenData get _value => super._value as _$GetHomeScreenData;
}

/// @nodoc

class _$GetHomeScreenData implements GetHomeScreenData {
  const _$GetHomeScreenData();

  @override
  String toString() {
    return 'HomepageEvent.getHomeScreenData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHomeScreenData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) {
    return getHomeScreenData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
  }) {
    return getHomeScreenData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeScreenData value) getHomeScreenData,
  }) {
    return getHomeScreenData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
  }) {
    return getHomeScreenData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData(this);
    }
    return orElse();
  }
}

abstract class GetHomeScreenData implements HomepageEvent {
  const factory GetHomeScreenData() = _$GetHomeScreenData;
}

/// @nodoc
mixin _$HomepageState {
  String get stateId => throw _privateConstructorUsedError;
  List<Result> get pastYearMovieList => throw _privateConstructorUsedError;
  List<Result> get treandingNowList => throw _privateConstructorUsedError;
  List<Result> get tensDramasMovieList => throw _privateConstructorUsedError;
  List<Result> get southIndianMovieList => throw _privateConstructorUsedError;
  List<Result> get trendingtvList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomepageStateCopyWith<HomepageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomepageStateCopyWith<$Res> {
  factory $HomepageStateCopyWith(
          HomepageState value, $Res Function(HomepageState) then) =
      _$HomepageStateCopyWithImpl<$Res>;
  $Res call(
      {String stateId,
      List<Result> pastYearMovieList,
      List<Result> treandingNowList,
      List<Result> tensDramasMovieList,
      List<Result> southIndianMovieList,
      List<Result> trendingtvList,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class _$HomepageStateCopyWithImpl<$Res>
    implements $HomepageStateCopyWith<$Res> {
  _$HomepageStateCopyWithImpl(this._value, this._then);

  final HomepageState _value;
  // ignore: unused_field
  final $Res Function(HomepageState) _then;

  @override
  $Res call({
    Object? stateId = freezed,
    Object? pastYearMovieList = freezed,
    Object? treandingNowList = freezed,
    Object? tensDramasMovieList = freezed,
    Object? southIndianMovieList = freezed,
    Object? trendingtvList = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_value.copyWith(
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      pastYearMovieList: pastYearMovieList == freezed
          ? _value.pastYearMovieList
          : pastYearMovieList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      treandingNowList: treandingNowList == freezed
          ? _value.treandingNowList
          : treandingNowList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      tensDramasMovieList: tensDramasMovieList == freezed
          ? _value.tensDramasMovieList
          : tensDramasMovieList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      southIndianMovieList: southIndianMovieList == freezed
          ? _value.southIndianMovieList
          : southIndianMovieList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      trendingtvList: trendingtvList == freezed
          ? _value.trendingtvList
          : trendingtvList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $HomepageStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {String stateId,
      List<Result> pastYearMovieList,
      List<Result> treandingNowList,
      List<Result> tensDramasMovieList,
      List<Result> southIndianMovieList,
      List<Result> trendingtvList,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$HomepageStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? stateId = freezed,
    Object? pastYearMovieList = freezed,
    Object? treandingNowList = freezed,
    Object? tensDramasMovieList = freezed,
    Object? southIndianMovieList = freezed,
    Object? trendingtvList = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_$_Initial(
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      pastYearMovieList: pastYearMovieList == freezed
          ? _value._pastYearMovieList
          : pastYearMovieList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      treandingNowList: treandingNowList == freezed
          ? _value._treandingNowList
          : treandingNowList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      tensDramasMovieList: tensDramasMovieList == freezed
          ? _value._tensDramasMovieList
          : tensDramasMovieList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      southIndianMovieList: southIndianMovieList == freezed
          ? _value._southIndianMovieList
          : southIndianMovieList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      trendingtvList: trendingtvList == freezed
          ? _value._trendingtvList
          : trendingtvList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.stateId,
      required final List<Result> pastYearMovieList,
      required final List<Result> treandingNowList,
      required final List<Result> tensDramasMovieList,
      required final List<Result> southIndianMovieList,
      required final List<Result> trendingtvList,
      required this.isLoading,
      required this.hasError})
      : _pastYearMovieList = pastYearMovieList,
        _treandingNowList = treandingNowList,
        _tensDramasMovieList = tensDramasMovieList,
        _southIndianMovieList = southIndianMovieList,
        _trendingtvList = trendingtvList;

  @override
  final String stateId;
  final List<Result> _pastYearMovieList;
  @override
  List<Result> get pastYearMovieList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastYearMovieList);
  }

  final List<Result> _treandingNowList;
  @override
  List<Result> get treandingNowList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_treandingNowList);
  }

  final List<Result> _tensDramasMovieList;
  @override
  List<Result> get tensDramasMovieList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tensDramasMovieList);
  }

  final List<Result> _southIndianMovieList;
  @override
  List<Result> get southIndianMovieList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_southIndianMovieList);
  }

  final List<Result> _trendingtvList;
  @override
  List<Result> get trendingtvList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingtvList);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'HomepageState(stateId: $stateId, pastYearMovieList: $pastYearMovieList, treandingNowList: $treandingNowList, tensDramasMovieList: $tensDramasMovieList, southIndianMovieList: $southIndianMovieList, trendingtvList: $trendingtvList, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.stateId, stateId) &&
            const DeepCollectionEquality()
                .equals(other._pastYearMovieList, _pastYearMovieList) &&
            const DeepCollectionEquality()
                .equals(other._treandingNowList, _treandingNowList) &&
            const DeepCollectionEquality()
                .equals(other._tensDramasMovieList, _tensDramasMovieList) &&
            const DeepCollectionEquality()
                .equals(other._southIndianMovieList, _southIndianMovieList) &&
            const DeepCollectionEquality()
                .equals(other._trendingtvList, _trendingtvList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stateId),
      const DeepCollectionEquality().hash(_pastYearMovieList),
      const DeepCollectionEquality().hash(_treandingNowList),
      const DeepCollectionEquality().hash(_tensDramasMovieList),
      const DeepCollectionEquality().hash(_southIndianMovieList),
      const DeepCollectionEquality().hash(_trendingtvList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements HomepageState {
  const factory _Initial(
      {required final String stateId,
      required final List<Result> pastYearMovieList,
      required final List<Result> treandingNowList,
      required final List<Result> tensDramasMovieList,
      required final List<Result> southIndianMovieList,
      required final List<Result> trendingtvList,
      required final bool isLoading,
      required final bool hasError}) = _$_Initial;

  @override
  String get stateId;
  @override
  List<Result> get pastYearMovieList;
  @override
  List<Result> get treandingNowList;
  @override
  List<Result> get tensDramasMovieList;
  @override
  List<Result> get southIndianMovieList;
  @override
  List<Result> get trendingtvList;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
