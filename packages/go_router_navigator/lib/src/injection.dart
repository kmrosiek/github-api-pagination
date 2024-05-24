import 'package:go_router_navigator/src/injection.config.dart';
import 'package:injectable/injectable.dart';
import 'package:common/get_it/get_it.dart';

@injectableInit
void configureGoRouterInjectable(GetIt getIt, String env) =>
    getIt.init(environment: env);
