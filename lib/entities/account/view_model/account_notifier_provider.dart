import 'package:flutter_riverpod/flutter_riverpod.dart' hide AsyncValue;
import 'package:future/entities/account/service/account_service.dart';
import 'package:future/entities/account/view_model/account_state.dart';
import 'package:future/shared/state/async_value.dart';
import 'package:hooks_riverpod/legacy.dart';

class AccountNotifier extends StateNotifier<AccountState> {
  final AccountService _accountService;

  AccountNotifier(this._accountService) : super(AccountState());

  Future<void> fetchTotalBalance() async {
    try {
      state = state.copyWith(accounts: const AsyncValue.loading());

      final totalBalance = await _accountService.getTotalBalance();

      state = state.copyWith(totalBalance: AsyncValue.data(totalBalance));
    } catch (e) {
      state = state.copyWith(accounts: AsyncValue.error(e));
    }
  }
}

final accountServiceProvider = Provider((ref) => AccountService());

final accountNotifierProvider =
    StateNotifierProvider<AccountNotifier, AccountState>((ref) {
      final accountService = ref.watch(accountServiceProvider);
      return AccountNotifier(accountService);
    });
