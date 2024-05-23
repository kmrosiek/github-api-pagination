import 'package:animate_do/animate_do.dart';
//import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Repository {
  final String name;
  final String description;
  final String language;
  final int stargazersCount;
  final int forksCount;
  final String createdAt;

  const Repository(this.name, this.description, this.language,
      this.stargazersCount, this.forksCount, this.createdAt);
}

const Repository repository = Repository(
    'Repo name', 'lorem ipsum', 'javascript', 12, 3332, '2016-10-29T22:00:54Z');

class RepositoryCard extends StatelessWidget {
  const RepositoryCard({super.key, this.delayBase = 0.0});
  final double delayBase;

  @override
  Widget build(BuildContext context) {
    return _cardContent();
  }

  FadeInLeft fadeInL({required Widget child, Duration delay = Duration.zero}) =>
      FadeInLeft(
          from: 10,
          duration: const Duration(milliseconds: 300),
          delay: delay,
          child: child);

  Duration _getDelayDuration(int milliseconds) =>
      Duration(milliseconds: milliseconds + delayBase.toInt());

  Widget _cardContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ElasticIn(child: const Icon(FontAwesomeIcons.github)),
                  const SizedBox(width: 8.0),
                  fadeInL(
                    child: Text(repository.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        )),
                  ),
                ],
              ),
              FadeInLeft(
                  from: 10,
                  duration: const Duration(milliseconds: 300),
                  delay: _getDelayDuration(50),
                  child: Text(repository.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ))),
            ],
          ),
          const SizedBox(height: 8.0),
          SizedBox(
            height: 40,
            child: fadeInL(
              child: const Text('This is description', maxLines: 2),
              delay: _getDelayDuration(50),
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ElasticIn(
                    delay: _getDelayDuration(100),
                    child: SvgPicture.network(
                      'https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/94e9ce8064716dcae11787102e6f35e10aa77246/icons/javascript.svg',
                      width: 20.0,
                      height: 20.0,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  fadeInL(
                      child: Text(repository.language),
                      delay: _getDelayDuration(150)),
                ],
              ),
              Row(
                children: [
                  ElasticIn(
                      delay: _getDelayDuration(150),
                      child: const Icon(FontAwesomeIcons.star, size: 16.0)),
                  const SizedBox(width: 4.0),
                  Text('${repository.stargazersCount}'),
                  const SizedBox(width: 16.0),
                  ElasticIn(
                      delay: _getDelayDuration(200),
                      child: const Icon(FontAwesomeIcons.codeFork, size: 16.0)),
                  const SizedBox(width: 4.0),
                  Text('${repository.forksCount}'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
