import 'package:future/app/routes/routes.dart';
import 'package:future/entities/session/services/session_service.dart';
import 'package:go_router/go_router.dart';

class AuthenticationGuard {
  AuthenticationGuard();

  String? redirect(GoRouterState state) {
    final session = SessionService.getSession();

    final location = state.matchedLocation;

    final isOnSplash = location == Routes.splash;
    final isOnLogin = location == Routes.login;

    if (isOnSplash) return null;

    if (session == null) {
      return isOnLogin ? null : Routes.login;
    }

    if (isOnLogin) {
      return Routes.main;
    }

    return null;
  }
}
