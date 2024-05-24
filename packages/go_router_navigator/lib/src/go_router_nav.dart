import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_navigator/src/routes/repository_details/repository_details_route.dart';
import 'package:injectable/injectable.dart';
import 'package:main_viewer/main_viewer.dart';
import 'package:navigator/navigator.dart';

@Singleton(as: INavigator)
class GoRouterNav implements INavigator {
  final _router = GoRouter(
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        builder: (context, state) => const RepositorySearchScreen(),
      ),
      $repositoryDetailsRoute
    ],
  );

  @override
  RouterConfig<Object> getRouter() => _router;

  @override
  void pop(BuildContext context) => context.pop();
}
