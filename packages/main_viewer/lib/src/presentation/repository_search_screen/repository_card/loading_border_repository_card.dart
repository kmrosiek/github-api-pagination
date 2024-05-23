import 'package:animated_loading_border/animated_loading_border.dart';
import 'package:flutter/material.dart';

class LoadingBorderRepositoryCard extends StatelessWidget {
  const LoadingBorderRepositoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedLoadingBorder(
        cornerRadius: 4,
        borderColor: Colors.grey.shade700,
        child: Container(height: 140));
  }
}
