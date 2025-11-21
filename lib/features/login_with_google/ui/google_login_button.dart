import 'package:future/features/login_with_google/view_model/google_auth_notifier.dart';
import 'package:future/shared/constants/spacing.dart';
import 'package:future/shared/ui/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoogleLoginButton extends ConsumerWidget {
  const GoogleLoginButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void onPressed() {
      ref.read(googleAuthNotifierProvider.notifier).signInWithGoogle();
    }

    return Button(
      onPressed: onPressed,
      variant: ButtonVariant.outlined,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/google_logo.svg',
            height: 18,
            width: 18,
          ),
          AppSpacing.gapH16,
          Text(
            'Sign in with Google',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
