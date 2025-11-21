import 'dart:async';

import 'package:future/app/environtment/env.dart';
import 'package:future/app/routes/routes.dart';
import 'package:future/shared/constants/spacing.dart';
import 'package:future/shared/lib/supabase/instance.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 1), () {
      setState(() {
        _opacity = 1.0;
      });
    });

    Timer(const Duration(seconds: 2), () async {
      if (!mounted) return;

      final session = supabase.auth.currentSession;

      if (session == null) {
        context.go(Routes.login);
      } else {
        context.go(Routes.home);
      }
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
                      'assets/images/logo_transparent.png',
                      width: 170,
                      height: 170,
                    ),
                  ],
                ),
              ),
              Text(
                "Version ${Env.appVersion}",
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
