// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:main_viewer/src/application/issues_cubit/issues_cubit.dart'
    as _i3;
import 'package:main_viewer/src/application/repository_search_cubit/repository_search_cubit.dart'
    as _i4;

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
    gh.factory<_i3.IssuesCubit>(() => _i3.IssuesCubit());
    gh.factory<_i4.RepositorySearchCubit>(() => _i4.RepositorySearchCubit());
    return this;
  }
}
