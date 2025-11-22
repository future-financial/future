import 'package:future/shared/lib/supabase/instance.dart';

class SupabaseSignOutService {
  Future<void> signOut() async {
    try {
      await supabase.auth.signOut();
    } catch (e) {
      rethrow;
    }
  }
}
