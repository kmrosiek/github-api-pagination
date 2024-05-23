import 'package:flutter/material.dart';

class RepositorySearchTextField extends StatelessWidget {
  const RepositorySearchTextField({super.key});

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
          //controller: _searchController,
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
