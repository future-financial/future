import 'package:future/features/email_sign_in/ui/form.dart';
import 'package:future/features/google_sign_in/ui/google_sign_in_button.dart';
import 'package:future/shared/constants/assets.dart';
import 'package:future/shared/constants/spacing.dart';
import 'package:future/shared/extensions/text_extensions.dart';
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
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(AppAssets.transparentLogo, height: 35),
                AppSpacing.gapH8,
                Text(
                  "Future",
                  style: Theme.of(context).textTheme.headlineMediumBold
                      .copyWith(
                        letterSpacing: -1.5,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
              ],
            ),
            AppSpacing.gapV24,
            Text(
              'See your money clearly',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            AppSpacing.gapV24,
            const LoginForm(),
            AppSpacing.gapV24,
            DividerWithText(text: "or"),
            AppSpacing.gapV24,
            GoogleLoginButton(),
          ],
        ),
      ),
    );
  }
}
