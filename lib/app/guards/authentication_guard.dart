import 'package:future/app/routes/routes.dart';
import 'package:future/shared/lib/supabase/instance.dart';
import 'package:go_router/go_router.dart';

class AuthenticationGuard {
  AuthenticationGuard();

  String? redirect(GoRouterState state) {
    final session = supabase.auth.currentSession;

    final isOnSplash = state.matchedLocation == Routes.splash;
    final isOnLogin = state.matchedLocation == Routes.login;
    final isOnMain = state.matchedLocation == Routes.main;

    if (isOnSplash) {
      return null;
    }

    if (session == null && !isOnLogin) {
      return Routes.login;
    }

    if (session != null && isOnLogin) {
      return Routes.main;
    }

    if (session != null && !isOnMain) {
      return Routes.main;
    }

    return null;
  }
}
