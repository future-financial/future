import 'package:future/shared/ui/button.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  const LoginButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Button(
      variant: ButtonVariant.primary,
      onPressed: onPressed,
      child: Text("Login"),
    );
  }
}
