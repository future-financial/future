import 'package:future/features/sign_out/view_model/sign_out_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignOutButton extends ConsumerWidget {
  const SignOutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void onPressed() {
      ref.read(signOutNotifierProvider.notifier).signOut();
    }

    return ElevatedButton(onPressed: onPressed, child: Text("Sign Out"));
  }
}
