import 'package:injectable/injectable.dart';
import 'package:common/get_it/get_it.dart';
import 'package:main_viewer/src/injection.config.dart';

@injectableInit
void configureMainViewerInjectable(GetIt getIt, String env) =>
    getIt.init(environment: env);
