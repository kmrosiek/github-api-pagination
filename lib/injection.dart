import 'package:common/get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:main_viewer/main_viewer.dart';

@InjectableInit(ignoreUnregisteredTypes: [])
void configureDependencies(String env) {
  configureMainViewerInjectable(getIt, env);
}
