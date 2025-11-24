import 'package:flutter_riverpod/flutter_riverpod.dart' hide AsyncValue;
import 'package:future/features/google_sign_in/services/google_sign_in_service.dart';
import 'package:future/features/google_sign_in/services/sign_in_with_token_service.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:future/shared/state/async_value.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class GoogleAuthNotifier extends StateNotifier<AsyncValue<void>> {
  final GoogleSignInService _googleSignInService;
  final SignInWithTokenService _signInWithTokenService;

  GoogleAuthNotifier(this._googleSignInService, this._signInWithTokenService)
    : super(const AsyncValue.data(null));

  Future<void> signInWithGoogle() async {
    try {
      state = const AsyncValue.loading();

      final googleIdToken = await _googleSignInService.signInAndGetIdToken();

      await _signInWithTokenService.signInWithIdToken(googleIdToken!);
    } on AuthApiException catch (e) {
      state = AsyncValue.error(e, "Google sign-in failed. Please try again.");
    } catch (e) {
      state = AsyncValue.error(e);
    } finally {
      state = const AsyncValue.data(null);
    }
  }
}

final googleAuthServiceProvider = Provider((ref) => GoogleSignInService());
final authServiceProvider = Provider((ref) => SignInWithTokenService());

final googleAuthNotifierProvider =
    StateNotifierProvider<GoogleAuthNotifier, AsyncValue<void>>(
      (ref) => GoogleAuthNotifier(
        ref.read(googleAuthServiceProvider),
        ref.read(authServiceProvider),
      ),
    );
