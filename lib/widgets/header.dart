import 'package:flutter/material.dart';
import 'package:future/entities/user/ui/user_avatar.dart';
import 'package:future/entities/user/ui/welcome_text.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [WelcomeText(), UserAvatar()],
    );
  }
}
