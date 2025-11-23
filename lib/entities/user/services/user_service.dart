import 'package:future/shared/lib/supabase/instance.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserService {
  User? getCurrentUser() {
    try {
      return supabase.auth.currentUser;
    } catch (e) {
      rethrow;
    }
  }
}
