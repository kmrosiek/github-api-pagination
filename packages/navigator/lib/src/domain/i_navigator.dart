import 'package:common/get_it/get_it.dart';
import 'package:flutter/material.dart';

abstract class INavigator {
  RouterConfig<Object> getRouter();
  void pop(BuildContext context);
}

final nav = getIt<INavigator>();
