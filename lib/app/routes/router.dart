import 'package:future/app/guards/authentication_guard.dart';
import 'package:future/app/routes/routes.dart';
import 'package:future/screens/login_screen.dart';
import 'package:future/screens/main_screen.dart';
import 'package:future/screens/profile_screen.dart';
import 'package:future/screens/splash_screen.dart';
import 'package:future/shared/extensions/go_route_state_extensions.dart';
import 'package:future/shared/helpers/go_router_stream.dart';
import 'package:future/shared/lib/supabase/instance.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: Routes.splash,
  refreshListenable: GoRouterStream(authStateStream),
  redirect: ((context, state) {
    final authGuard = AuthenticationGuard();
    return authGuard.redirect(state);
  }),
  routes: [
    /// Route for main screen
    /// Path: [Routes.main]
    GoRoute(path: Routes.main, builder: (context, state) => MainScreen()),

    /// Route for profile screen
    /// Path: [Routes.profile]
    GoRoute(
      path: Routes.profile,
      pageBuilder: (context, state) =>
          state.slidePage(ProfileScreen(), direction: SlideDirection.left),
    ),

    /// Route for splash screen
    /// Path: [Routes.splash]
    GoRoute(path: Routes.splash, builder: (context, state) => SplashScreen()),

    /// Route for login screen
    /// Path: [Routes.login]
    GoRoute(path: Routes.login, builder: (context, state) => LoginScreen()),
  ],
);
