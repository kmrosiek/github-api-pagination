// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router_navigator/src/go_router_nav.dart' as _i4;
import 'package:go_router_navigator/src/routes/repository_details/repository_details_route.dart'
    as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:navigator/navigator.dart' as _i3;

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
    gh.singleton<_i3.INavigator>(() => _i4.GoRouterNav());
    gh.factoryParam<_i3.IRepositoryDetailsRoute, _i3.RepositoryDetailsRouteData,
        dynamic>((
      data,
      _,
    ) =>
        _i5.DashboardWrapper(data));
    return this;
  }
}
