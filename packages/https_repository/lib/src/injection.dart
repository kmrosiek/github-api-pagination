import 'package:https_repository/src/injection.config.dart';
import 'package:injectable/injectable.dart';
import 'package:common/get_it/get_it.dart';

@injectableInit
void configureHttpsRepositoryInjectable(GetIt getIt, String env) =>
    getIt.init(environment: env);
