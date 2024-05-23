import 'package:flutter/material.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/loading_border_repository_card.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/repository_card.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/widgets/animated_github_logo.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/widgets/animated_spacer_to_center_text_field.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/widgets/repository_search_text_field.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/widgets/title_or_no_of_found_repositories_text.dart';

class RepositorySearchScreen extends StatefulWidget {
  const RepositorySearchScreen({super.key});

  @override
  State<RepositorySearchScreen> createState() => _RepositorySearchScreenState();
}

class _RepositorySearchScreenState extends State<RepositorySearchScreen>
    with SingleTickerProviderStateMixin {
  bool _showFirstWidget = true;
  bool _searching = true;
  bool _spacer = true;
  final GlobalKey<NestedScrollViewState> globalKey = GlobalKey();

  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));

    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: _animationController, curve: Curves.fastOutSlowIn));
    _animationController.forward();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      globalKey.currentState!.innerController.addListener(() {
        if (globalKey.currentState != null) {
          if (globalKey.currentState!.innerController.offset < 10) {
            _animationController.forward();
          } else {
            _animationController.reverse();
          }
        }
      });
    });

    _searchController.addListener(() {
      if (_searchController.text.length > 3 && _searching == true) {
        setState(() {
          _searching = false;
          _showFirstWidget = false;
        });
      } else if (_searchController.text.length <= 3 && _searching == false) {
        setState(() {
          _searching = true;
          _showFirstWidget = true;
        });
      }
      if (_searchController.text.isEmpty && _spacer == false) {
        setState(() {
          _spacer = true;
        });
      } else if (_searchController.text.isNotEmpty && _spacer == true) {
        setState(() {
          _spacer = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Column(
        children: [
          AnimatedSpacerToCenterTextField(shouldCenter: _spacer),
          AnimatedGithubLogo(scaleAnimation: _scaleAnimation),
          TitleOrNoOfFoundRepositoriesText(showTitle: _showFirstWidget),
          Expanded(
              flex: 2,
              child: NestedScrollView(
                  key: globalKey,
                  floatHeaderSlivers: true,
                  headerSliverBuilder: (context, __) => [
                        RepositorySearchTextField(),
                      ],
                  body: _spacer
                      ? const SizedBox.shrink()
                      : ListView(padding: EdgeInsets.zero, children: [
                          ...List.generate(10, (index) {
                            print('lets build!');
                            return Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: _searching
                                  ? const LoadingBorderRepositoryCard()
                                  : RepositoryCard(
                                      delayBase: index < 5 ? index * 100 : 0.0),
                            );
                          })
                        ]))),
        ],
      ),
    ));
  }
}
