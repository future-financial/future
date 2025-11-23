import 'dart:async';

import 'package:future/app/routes/routes.dart';
import 'package:future/entities/session/services/session_service.dart';
import 'package:future/entities/user/view_model/user_notifier_provider.dart';
import 'package:future/shared/constants/app_info.dart';
import 'package:future/shared/constants/assets.dart';
import 'package:future/shared/constants/spacing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 1), () {
      setState(() {
        _opacity = 1.0;
      });
    });

    Timer(const Duration(seconds: 2), () {
      if (!mounted) return;

      final session = SessionService.getSession();

      if (session == null) {
        context.go(Routes.login);
      } else {
        context.go(Routes.main);
      }
    });

    Future.microtask(() {
      ref.read(userNotifierProvider.notifier).getCurrentUser();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(seconds: 1),
        curve: Curves.easeOut,
        child: Container(
          padding: AppSpacing.p6,
          width: double.infinity,
          color: Theme.of(context).colorScheme.surface,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.transparentLogo,
                      width: 170,
                      height: 170,
                    ),
                  ],
                ),
              ),
              Text(
                "Version ${AppInfo.version}",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
