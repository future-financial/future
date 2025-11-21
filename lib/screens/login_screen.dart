import 'package:future/features/login_with_email/ui/form.dart';
import 'package:future/features/login_with_google/ui/google_login_button.dart';
import 'package:future/shared/constants/spacing.dart';
import 'package:future/shared/ui/divider_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: AppSpacing.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo_transparent.png', height: 150),
            AppSpacing.gapV24,
            Text('Login', style: Theme.of(context).textTheme.headlineMedium),
            AppSpacing.gapV24,
            const LoginForm(),
            AppSpacing.gapV24,
            DividerWithText(text: "Or continue with"),
            AppSpacing.gapV24,
            GoogleLoginButton(),
          ],
        ),
      ),
    );
  }
}
