// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_details_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $repositoryDetailsRoute,
    ];

RouteBase get $repositoryDetailsRoute => GoRouteData.$route(
      path: '/repositoryDetails',
      factory: $RepositoryDetailsRouteExtension._fromState,
    );

extension $RepositoryDetailsRouteExtension on RepositoryDetailsRoute {
  static RepositoryDetailsRoute _fromState(GoRouterState state) =>
      RepositoryDetailsRoute(
        repositoryName: state.uri.queryParameters['repository-name']!,
        programmingLanguage: state.uri.queryParameters['programming-language']!,
        description: state.uri.queryParameters['description']!,
        stars: int.parse(state.uri.queryParameters['stars']!),
        forks: int.parse(state.uri.queryParameters['forks']!),
        ownerName: state.uri.queryParameters['owner-name']!,
        ownerAvatarUrl: state.uri.queryParameters['owner-avatar-url']!,
        cardIndex: int.parse(state.uri.queryParameters['card-index']!),
      );

  String get location => GoRouteData.$location(
        '/repositoryDetails',
        queryParams: {
          'repository-name': repositoryName,
          'programming-language': programmingLanguage,
          'description': description,
          'stars': stars.toString(),
          'forks': forks.toString(),
          'owner-name': ownerName,
          'owner-avatar-url': ownerAvatarUrl,
          'card-index': cardIndex.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
