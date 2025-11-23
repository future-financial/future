import 'package:future/shared/lib/supabase/instance.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SessionService {
  static Session? getSession() {
    return supabase.auth.currentSession;
  }
}
