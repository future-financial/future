import 'package:flutter_riverpod/legacy.dart';
import 'package:future/features/email_sign_in/services/email_sign_in_service.dart';
import 'package:future/shared/state/async_value.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide AsyncValue;

class EmailSignInNotifier extends StateNotifier<AsyncValue<void>> {
  final EmailSignInService _emailSignInService;

  EmailSignInNotifier(this._emailSignInService)
    : super(const AsyncValue.data(null));

  Future<void> signInWithEmail(String email, String password) async {
    try {
      state = const AsyncValue.loading();

      await _emailSignInService.signIn(email, password);
    } on AuthApiException {
      state = AsyncValue.error(
        AuthApiException,
        "Invalid email or password. Please try again.",
      );
    } catch (e) {
      state = AsyncValue.error(e);
    } finally {
      state = const AsyncValue.data(null);
    }
  }
}

final emailSignInServiceProvider = Provider((ref) => EmailSignInService());

final emailSignInNotifierProvider =
    StateNotifierProvider<EmailSignInNotifier, AsyncValue<void>>(
      (ref) => EmailSignInNotifier(ref.read(emailSignInServiceProvider)),
    );
