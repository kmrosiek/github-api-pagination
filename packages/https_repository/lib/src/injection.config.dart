// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:https_repository/src/issues_repository/issues_repository.dart'
    as _i5;
import 'package:https_repository/src/repository_search/repository_search.dart'
    as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:main_viewer/main_viewer.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IRepositorySearch>(() => _i4.RepositorySearch());
    gh.lazySingleton<_i3.IIssuesRepository>(() => _i5.IssuesRepository());
    return this;
  }
}
