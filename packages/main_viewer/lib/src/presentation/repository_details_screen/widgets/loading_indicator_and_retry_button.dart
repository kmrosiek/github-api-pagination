import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_viewer/src/application/issues_cubit/issues_cubit.dart';

class LoadingIndicatorAndRetryButton extends StatelessWidget {
  const LoadingIndicatorAndRetryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<IssuesCubit, IssuesState>(builder: (context, state) {
        if (state.failureWithNoIssuesListed) {
          return Column(
            children: [
              Text(state.getFailureMessageOrNull ??
                  'Issues could not be fetched.'),
              const SizedBox(height: 8.0),
              ElevatedButton(
                  onPressed: () {
                    context.read<IssuesCubit>().fetch();
                  },
                  child: const Text('Retry')),
            ],
          );
        }
        return state.isLoading
            ? const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: CircularProgressIndicator(),
              )
            : const SizedBox.shrink();
      }),
    );
  }
}
