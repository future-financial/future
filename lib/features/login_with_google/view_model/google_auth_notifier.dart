import 'package:future/features/login_with_google/services/google_sign_in_service.dart';
import 'package:future/features/login_with_google/services/supabase_sign_in_with_token_service.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GoogleAuthNotifier extends StateNotifier<void> {
  final GoogleSignInService _googleSignInService;
  final SupabaseSignInWithTokenService _supabaseSignInWithTokenService;

  GoogleAuthNotifier(
    this._googleSignInService,
    this._supabaseSignInWithTokenService,
  ) : super(null);

  Future<void> signInWithGoogle() async {
    final googleIdToken = await _googleSignInService.signInAndGetIdToken();

    await _supabaseSignInWithTokenService.signInWithIdToken(googleIdToken!);
  }
}

final googleAuthServiceProvider = Provider((ref) => GoogleSignInService());
final supabaseAuthServiceProvider = Provider(
  (ref) => SupabaseSignInWithTokenService(),
);

final googleAuthNotifierProvider =
    StateNotifierProvider<GoogleAuthNotifier, void>(
      (ref) => GoogleAuthNotifier(
        ref.read(googleAuthServiceProvider),
        ref.read(supabaseAuthServiceProvider),
      ),
    );
