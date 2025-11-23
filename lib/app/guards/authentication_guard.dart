import 'package:future/app/routes/routes.dart';
import 'package:future/entities/session/services/session_service.dart';
import 'package:go_router/go_router.dart';

class AuthenticationGuard {
  AuthenticationGuard();

  String? redirect(GoRouterState state) {
    final session = SessionService.getSession();

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
