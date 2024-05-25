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
    as _i5;
import 'package:main_viewer/src/domain/interfaces/i_issues_repository.dart'
    as _i4;
import 'package:main_viewer/src/domain/interfaces/i_repository_search.dart'
    as _i6;

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
    gh.factoryParam<_i3.IssuesCubit, String, String>((
      ownerLogin,
      repositoryName,
    ) =>
        _i3.IssuesCubit(
          gh<_i4.IIssuesRepository>(),
          ownerLogin,
          repositoryName,
        ));
    gh.factory<_i5.RepositorySearchCubit>(
        () => _i5.RepositorySearchCubit(gh<_i6.IRepositorySearch>()));
    return this;
  }
}
