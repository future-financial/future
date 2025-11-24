import 'package:future/shared/lib/supabase/instance.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SessionService {
  static Session? getSession() {
    try {
      return supabase.auth.currentSession;
    } catch (e) {
      rethrow;
    }
  }
}
