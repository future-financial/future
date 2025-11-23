import 'package:future/features/sign_out/ui/sign_out_button.dart';
import 'package:flutter/material.dart';
import 'package:future/widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Text('Home Screen', style: TextStyle(fontSize: 24)),
            SignOutButton(),
          ],
        ),
      ),
    );
  }
}
