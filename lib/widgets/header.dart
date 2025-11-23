import 'package:flutter/material.dart';
import 'package:future/entities/user/ui/user_avatar.dart';
import 'package:future/entities/user/ui/welcome_text.dart';
import 'package:future/shared/constants/spacing.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSpacing.p16,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [WelcomeText(), UserAvatar()],
      ),
    );
  }
}
