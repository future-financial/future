import 'package:future/shared/lib/supabase/instance.dart';

class SupabaseSignOutService {
  Future<void> signOut() async {
    await supabase.auth.signOut();
  }
}
