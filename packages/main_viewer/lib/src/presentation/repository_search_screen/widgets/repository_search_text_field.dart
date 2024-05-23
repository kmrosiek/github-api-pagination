import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_viewer/src/application/cubit/repository_search_cubit.dart';

class RepositorySearchTextField extends StatefulWidget {
  const RepositorySearchTextField({super.key});

  @override
  State<RepositorySearchTextField> createState() =>
      _RepositorySearchTextFieldState();
}

class _RepositorySearchTextFieldState extends State<RepositorySearchTextField> {
  final TextEditingController _searchController =
      TextEditingController(text: 'hello');
  String? _lastSearchPhrase = "";
  Timer? _preventTooFrequentSearch;
  static const Duration _timeToWaitAfterKeyPressed =
      Duration(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      if (_lastSearchPhrase == _searchController.text) return;
      if (_preventTooFrequentSearch?.isActive ?? false) {
        _preventTooFrequentSearch?.cancel();
      }
      _preventTooFrequentSearch = Timer(_timeToWaitAfterKeyPressed, () {
        context
            .read<RepositorySearchCubit>()
            .searchRepositories(_searchController.text);
        _lastSearchPhrase = _searchController.text;
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _preventTooFrequentSearch?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      primary: false,
      floating: false,
      collapsedHeight: 60,
      toolbarHeight: 60,
      title: Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: TextField(
          controller: _searchController,
          onTapOutside: (_) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          decoration: InputDecoration(
            hintText: 'Search Repositories',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          ),
        ),
      ),
    );
  }
}
