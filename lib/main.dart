import 'package:future/app/routes/router.dart';
import 'package:future/app/theme/app_theme.dart';
import 'package:future/shared/lib/google/instance.dart';
import 'package:future/shared/lib/supabase/instance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeGoogleSignIn();
  await initializeSupabase();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: appThemeData,
    );
  }
}
