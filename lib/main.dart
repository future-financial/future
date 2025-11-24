import 'package:future/app/environtment/env.dart';
import 'package:future/app/routes/router.dart';
import 'package:future/app/theme/app_theme.dart';
import 'package:future/config/system_ui_config.dart';
import 'package:future/shared/constants/app_info.dart';
import 'package:future/shared/lib/google/instance.dart';
import 'package:future/shared/lib/supabase/instance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting(Env.defaultLocale, null);
  await initializeGoogleSignIn();
  await initializeSupabase();
  await AppInfo.init();
  SystemUiConfig.setDefault();

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
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: SafeArea(child: child!),
        );
      },
    );
  }
}
