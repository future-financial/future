import 'package:future/entities/account/model/account_model.dart';
import 'package:future/shared/state/async_value.dart';

class AccountState {
  final AsyncValue<List<AccountModel>> accounts;
  final AsyncValue<AccountModel?> detail;
  final AsyncValue<num> totalBalance;

  AccountState({
    this.accounts = const AsyncValue.data([]),
    this.detail = const AsyncValue.data(null),
    this.totalBalance = const AsyncValue.data(0),
  });

  AccountState copyWith({
    AsyncValue<List<AccountModel>>? accounts,
    AsyncValue<AccountModel?>? detail,
    AsyncValue<num>? totalBalance,
  }) {
    return AccountState(
      accounts: accounts ?? this.accounts,
      detail: detail ?? this.detail,
      totalBalance: totalBalance ?? this.totalBalance,
    );
  }
}
