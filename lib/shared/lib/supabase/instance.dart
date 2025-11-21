import 'package:future/app/environtment/env.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final SupabaseClient supabase = Supabase.instance.client;

Future<void> initializeSupabase() async {
  await Supabase.initialize(url: Env.supabaseUrl, anonKey: Env.supabaseAnonKey);
}

final authStateStream = supabase.auth.onAuthStateChange;
