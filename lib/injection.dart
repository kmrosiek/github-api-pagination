import 'package:common/get_it/get_it.dart';
import 'package:go_router_navigator/go_router_navigator.dart';
import 'package:https_repository/https_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:main_viewer/main_viewer.dart';

@InjectableInit(ignoreUnregisteredTypes: [
  IIssuesRepository,
  IRepositorySearch,
])
void configureDependencies(String env) {
  configureMainViewerInjectable(getIt, env);
  configureHttpsRepositoryInjectable(getIt, env);
  configureGoRouterInjectable(getIt, env);
}
