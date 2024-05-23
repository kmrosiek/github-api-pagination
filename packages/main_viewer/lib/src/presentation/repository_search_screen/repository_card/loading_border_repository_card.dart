import 'package:animated_loading_border/animated_loading_border.dart';
import 'package:flutter/material.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/widgets/repository_card_border.dart';

class LoadingBorderRepositoryCard extends StatelessWidget {
  const LoadingBorderRepositoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedLoadingBorder(
        cornerRadius: RepositoryCardBorder.borderRadius,
        borderColor: RepositoryCardBorder.borderColor,
        child: Container(height: 140));
  }
}
