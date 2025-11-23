import 'package:future/entities/user/ui/user_avatar.dart';
import 'package:future/features/sign_out/ui/sign_out_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UserAvatar(),
            Text('Home Screen', style: TextStyle(fontSize: 24)),
            SignOutButton(),
          ],
        ),
      ),
    );
  }
}
