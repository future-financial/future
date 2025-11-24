import 'package:flutter/material.dart';
import 'package:future/features/sign_out/ui/sign_out_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: SignOutButton()));
  }
}
