import 'package:common/constants/dim.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_viewer/src/application/issues_cubit/issues_cubit.dart';
import 'package:main_viewer/src/domain/issue_data/issue_data.dart';
import 'package:main_viewer/src/presentation/repository_details_screen/widgets/issue_card.dart';

class IssuesList extends StatelessWidget {
  const IssuesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IssuesCubit, IssuesState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dim.screenPadding),
          child: Column(
              children: state.issues
                  .map((issue) => IssueCard(issueData: issueData))
                  .toList()),
        );
      },
    );
  }
}
