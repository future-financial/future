import 'package:future/shared/lib/supabase/instance.dart';

class EmailSignInService {
  Future<void> signIn(String email, String password) async {
    try {
      await supabase.auth.signInWithPassword(email: email, password: password);
    } catch (e) {
      rethrow;
    }
  }
}
