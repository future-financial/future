import 'package:future/shared/lib/supabase/instance.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignInWithTokenService {
  Future<void> signInWithIdToken(String idToken) async {
    try {
      await supabase.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: idToken,
      );
    } catch (e) {
      rethrow;
    }
  }
}
