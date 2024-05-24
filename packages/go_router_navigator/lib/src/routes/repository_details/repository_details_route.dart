import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:main_viewer/main_viewer.dart';
import 'package:navigator/navigator.dart';

part 'repository_details_route.g.dart';

@Injectable(as: IRepositoryDetailsRoute)
class DashboardWrapper implements IRepositoryDetailsRoute {
  final RepositoryDetailsRoute _route;

  @factoryMethod
  DashboardWrapper(@factoryParam RepositoryDetailsRouteData data)
      : _route = RepositoryDetailsRoute(
          repositoryName: data.repositoryName,
          programmingLanguage: data.programmingLanguage,
          description: data.description,
          stars: data.stars,
          forks: data.forks,
          ownerName: data.ownerName,
          ownerAvatarUrl: data.ownerAvatarUrl,
          cardIndex: data.cardIndex,
        );

  @override
  void go(BuildContext context) => _route.push(context);
}

@TypedGoRoute<RepositoryDetailsRoute>(path: '/${RouteNames.repositoryDetails}')
class RepositoryDetailsRoute extends GoRouteData {
  final String repositoryName;
  final String programmingLanguage;
  final String description;
  final int stars;
  final int forks;
  final String ownerName;
  final String ownerAvatarUrl;
  final int cardIndex;

  RepositoryDetailsRoute({
    required this.repositoryName,
    required this.programmingLanguage,
    required this.description,
    required this.stars,
    required this.forks,
    required this.ownerName,
    required this.ownerAvatarUrl,
    required this.cardIndex,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RepositoryDetailsScreen(
        index: cardIndex,
        repositoryData: RepositoryData(
            repositoryName: repositoryName,
            programmingLanguage: programmingLanguage,
            description: description,
            stars: stars,
            forks: forks,
            ownerName: ownerName,
            ownerAvatarUrl: ownerAvatarUrl));
  }
}
