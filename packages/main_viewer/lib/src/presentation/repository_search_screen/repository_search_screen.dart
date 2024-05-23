import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_viewer/src/application/cubit/repository_search_cubit.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_search_content.dart';

class RepositorySearchScreen extends StatelessWidget {
  const RepositorySearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            bottom: false,
            child: BlocProvider(
                create: (_) => RepositorySearchCubit(),
                child: const RepositorySearchContent())));
  }
}
