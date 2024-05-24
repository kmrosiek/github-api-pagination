import 'package:common/snackbar/app_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_viewer/src/application/issues_cubit/issues_cubit.dart';

class BlocListenerForErrorMessage extends StatelessWidget {
  const BlocListenerForErrorMessage({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<IssuesCubit, IssuesState>(
      listenWhen: (previous, current) =>
          previous.maybeFailure != current.maybeFailure &&
          current.maybeFailure.isSome(),
      listener: (context, state) {
        final String? maybeErrorMessage =
            state.maybeFailure.fold(() => null, (failure) => failure.message);
        AppSnackBar.show(context, text: maybeErrorMessage ?? 'Error occured');
      },
      child: child,
    );
  }
}
