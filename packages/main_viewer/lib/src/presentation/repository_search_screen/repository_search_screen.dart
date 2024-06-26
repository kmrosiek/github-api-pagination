import 'package:common/get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_viewer/src/application/repository_search_cubit/repository_search_cubit.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_search_content.dart';

class RepositorySearchScreen extends StatelessWidget {
  const RepositorySearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            bottom: false,
            child: BlocProvider(
                create: (_) => getIt<RepositorySearchCubit>(),
                child: const RepositorySearchContent())));
  }
}
