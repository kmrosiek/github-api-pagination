import 'package:animated_loading_border/animated_loading_border.dart';
import 'package:common/constants/app_colors.dart';
import 'package:common/constants/dim.dart';
import 'package:flutter/material.dart';

class LoadingBorderRepositoryCard extends StatelessWidget {
  const LoadingBorderRepositoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dim.verticalCardsMargin),
      child: AnimatedLoadingBorder(
          cornerRadius: Dim.borderRadius,
          borderColor: AppColors.border,
          child: Container(height: 140)),
    );
  }
}
