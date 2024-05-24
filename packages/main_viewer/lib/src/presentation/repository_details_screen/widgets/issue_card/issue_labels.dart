import 'package:flutter/material.dart';
import 'package:main_viewer/src/domain/models/issue_data/issue_label.dart';

class IssueLabels extends StatelessWidget {
  const IssueLabels({super.key, required this.labels});
  final List<IssueLabel> labels;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 24,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        const SizedBox(width: 16),
        ...labels.map((label) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 2.0),
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
                color: label.color.withAlpha(100),
                border: Border.all(color: label.color),
                borderRadius: BorderRadius.circular(12.0)),
            child: Text(
              label.text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 9.0,
                  color: _darken(label.color)),
            )))
      ]),
    );
  }

  Color _darken(Color color, [double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }
}
