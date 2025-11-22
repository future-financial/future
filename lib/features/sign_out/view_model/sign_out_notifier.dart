import 'package:future/features/sign_out/services/supabase_sign_out_service.dart';
import 'package:future/shared/state/async_value.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart' hide AsyncValue;
import 'package:hooks_riverpod/legacy.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignOutNotifier extends StateNotifier<AsyncValue<void>> {
  final SupabaseSignOutService _supabaseSignOutService;

  SignOutNotifier(this._supabaseSignOutService)
    : super(const AsyncValue.data(null));

  Future<void> signOut() async {
    try {
      await _supabaseSignOutService.signOut();
    } on AuthApiException catch (e) {
      state = AsyncValue.error(e, "Failed to sign out. Please try again.");
    } catch (e) {
      state = AsyncValue.error(
        e,
        "An unexpected error occurred. Please try again.",
      );
    }
  }
}

final supabaseSignOutServiceProvider = Provider(
  (ref) => SupabaseSignOutService(),
);

final signOutNotifierProvider =
    StateNotifierProvider<SignOutNotifier, AsyncValue<void>>(
      (ref) => SignOutNotifier(ref.read(supabaseSignOutServiceProvider)),
    );
