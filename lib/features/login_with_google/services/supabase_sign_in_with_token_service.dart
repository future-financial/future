import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseSignInWithTokenService {
  Future<void> signInWithIdToken(String idToken) async {
    await Supabase.instance.client.auth.signInWithIdToken(
      provider: OAuthProvider.google,
      idToken: idToken,
    );
  }
}
