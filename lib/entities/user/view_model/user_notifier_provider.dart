import 'package:flutter_riverpod/flutter_riverpod.dart' hide AsyncValue;
import 'package:future/entities/user/services/user_service.dart';
import 'package:future/shared/state/async_value.dart';
import 'package:hooks_riverpod/legacy.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserNotifier extends StateNotifier<AsyncValue<User?>> {
  final UserService _userService;

  UserNotifier(this._userService) : super(const AsyncValue.data(null));

  void getCurrentUser() {
    try {
      final User? user = _userService.getCurrentUser();

      state = AsyncValue<User?>.data(user);
    } on AuthApiException catch (e) {
      state = AsyncValue.error(e, "Failed to get current user.");
    } catch (e) {
      state = AsyncValue.error(e);
    }
  }
}

final userServiceProvider = Provider<UserService>((ref) => UserService());

final userNotifierProvider =
    StateNotifierProvider<UserNotifier, AsyncValue<User?>>((ref) {
      final userService = ref.watch(userServiceProvider);
      return UserNotifier(userService);
    });
