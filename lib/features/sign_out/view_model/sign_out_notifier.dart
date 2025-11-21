import 'package:future/features/sign_out/services/supabase_sign_out_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hooks_riverpod/legacy.dart';

class SignOutNotifier extends StateNotifier<void> {
  final SupabaseSignOutService _supabaseSignOutService;

  SignOutNotifier(this._supabaseSignOutService) : super(null);

  Future<void> signOut() async {
    await _supabaseSignOutService.signOut();
  }
}

final supabaseSignOutServiceProvider = Provider(
  (ref) => SupabaseSignOutService(),
);

final signOutNotifierProvider = StateNotifierProvider<SignOutNotifier, void>(
  (ref) => SignOutNotifier(ref.read(supabaseSignOutServiceProvider)),
);
