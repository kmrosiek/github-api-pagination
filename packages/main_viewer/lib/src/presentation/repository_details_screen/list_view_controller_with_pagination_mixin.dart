part of 'repository_details_content.dart';

mixin ListViewControllerWithPaginationMixin<T extends StatefulWidget>
    on State<T> {
  final ScrollController listViewScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    listViewScrollController.addListener(_onScroll);
    context.read<IssuesCubit>().fetch();
  }

  @override
  void dispose() {
    listViewScrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (listViewScrollController.position.extentAfter < 200) {
      if (context.read<IssuesCubit>().state.canFetchMore) {
        context.read<IssuesCubit>().fetch();
      }
    }
  }
}
