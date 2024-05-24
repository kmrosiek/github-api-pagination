import 'package:common/get_it/get_it.dart';
import 'package:navigator/src/domain/routes/repository_details_route/i_repository_details_route.dart';
import 'package:navigator/src/domain/routes/repository_details_route/repository_details_route_data.dart';

class AppRoutes {
  static IRepositoryDetailsRoute repositoryDetails(
          {required RepositoryDetailsRouteData repositoryData}) =>
      getIt<IRepositoryDetailsRoute>(param1: repositoryData);
}
