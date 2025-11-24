import 'package:future/entities/account/model/account_model.dart';
import 'package:future/shared/lib/supabase/instance.dart';

class AccountService {
  Future<List<AccountModel>> getAccounts() async {
    try {
      // TODO: Implement getAccounts method

      final accounts = await supabase.from('accounts').select('*');

      return accounts.map((e) => AccountModel.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<AccountModel> createAccount(AccountModel account) async {
    // TODO: Implement createAccount method
    return account;
  }

  Future<AccountModel> updateAccount(AccountModel account) async {
    // TODO: Implement updateAccount method
    return account;
  }

  Future<bool> deleteAccount(String id) async {
    // TODO: Implement deleteAccount method
    return true;
  }

  Future<num> getTotalBalance() async {
    try {
      final response = await supabase
          .from('accounts')
          .select('current_balance.sum()');

      return response[0]['sum'] ?? 0;
    } catch (e) {
      rethrow;
    }
  }
}
