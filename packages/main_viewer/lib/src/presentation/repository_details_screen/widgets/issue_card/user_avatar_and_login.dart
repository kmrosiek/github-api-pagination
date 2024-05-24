import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class UserAvatarAndLogin extends StatelessWidget {
  const UserAvatarAndLogin(
      {super.key, required this.userAvatarUrl, required this.userLogin});
  final String userAvatarUrl;
  final String userLogin;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElasticIn(
            child: Image.network(userAvatarUrl, width: 20.0, height: 20.0)),
        const SizedBox(width: 8.0),
        FadeInLeft(
          from: 10,
          duration: const Duration(milliseconds: 300),
          child: Text(userLogin, style: const TextStyle(fontSize: 12.0)),
        ),
      ],
    );
  }
}
