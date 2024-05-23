import 'package:flutter/material.dart';
import 'package:main_viewer/src/domain/repository_data/repository_data.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/repository_card.dart';

class RepositoryDetailsScreen extends StatelessWidget {
  const RepositoryDetailsScreen({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                tag: 'hero_$index',
                child: RepositoryCard(
                    repositoryData: repositoryExample,
                    index: index,
                    stoppedAnimation: true,
                    hideBorder: true))
          ],
        ),
      ),
    );
  }
}
