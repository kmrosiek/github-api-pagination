import 'package:common/get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_viewer/main_viewer.dart';
import 'package:main_viewer/src/presentation/repository_details_screen/repository_details_content.dart';
import 'package:navigator/navigator.dart';

class RepositoryDetailsScreen extends StatelessWidget {
  const RepositoryDetailsScreen(
      {super.key, required this.index, required this.repositoryData});
  final int index;
  final RepositoryData repositoryData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title:
            const Text('Issues', style: TextStyle(fontWeight: FontWeight.bold)),
        leading:
            BackButton(color: Colors.black, onPressed: () => nav.pop(context)),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        surfaceTintColor: Colors.transparent,
      ),
      body: SafeArea(
        bottom: false,
        child: BlocProvider(
          create: (context) => getIt<IssuesCubit>(
              param1: repositoryData.ownerName,
              param2: repositoryData.repositoryName),
          child: RepositoryDetailsContent(
              repoIndex: index, repositoryData: repositoryData),
        ),
      ),
    );
  }
}
