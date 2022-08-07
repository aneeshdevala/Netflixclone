// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads_bloc/downloads_bloc.dart' as _i7;
import '../../../application/fast_laugh/fast_laugh_bloc.dart' as _i8;
import '../../../application/search/search_bloc.dart' as _i9;
import '../../../infrastructure/downloads/downloads_repository.dart' as _i4;
import '../../../infrastructure/search/search_impl.dart' as _i6;
import '../../downlods/i_downloads_repo.dart' as _i3;
import '../../search/search_service.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IDownloadRepo>(() => _i4.DownloadsRepository());
  gh.lazySingleton<_i5.SearchService>(() => _i6.SearchImpl());
  gh.factory<_i7.DownloadsBloc>(
      () => _i7.DownloadsBloc(get<_i3.IDownloadRepo>()));
  gh.factory<_i8.FastLaughBloc>(
      () => _i8.FastLaughBloc(get<_i3.IDownloadRepo>()));
  gh.factory<_i9.SearchBloc>(
      () => _i9.SearchBloc(get<_i3.IDownloadRepo>(), get<_i5.SearchService>()));
  return get;
}
