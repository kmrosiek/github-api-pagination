part of 'repository_search_content.dart';

mixin _GitHubLogoAnimationMixin<T extends StatefulWidget> on State<T> {
  final GlobalKey<NestedScrollViewState> _nestedScrollViewKey = GlobalKey();

  late AnimationController _gitHubLogoAnimationController;
  late Animation<double> githubLogoScaleAnimation;

  void initialiseAnimation(_RepositorySearchContentState state) {
    _gitHubLogoAnimationController = AnimationController(
        vsync: state, duration: const Duration(milliseconds: 200));

    githubLogoScaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: _gitHubLogoAnimationController,
            curve: Curves.fastOutSlowIn));
    _gitHubLogoAnimationController.forward();

    _addListenerToInnerControllerOfNestedScrollView();
  }

  void _addListenerToInnerControllerOfNestedScrollView() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _nestedScrollViewKey.currentState!.innerController.addListener(() {
        if (_nestedScrollViewKey.currentState != null) {
          if (_nestedScrollViewKey.currentState!.innerController.offset < 10) {
            _gitHubLogoAnimationController.forward();
          } else {
            _gitHubLogoAnimationController.reverse();
          }
        }
      });
    });
  }

  @override
  void dispose() {
    _gitHubLogoAnimationController.dispose();
    super.dispose();
  }
}
