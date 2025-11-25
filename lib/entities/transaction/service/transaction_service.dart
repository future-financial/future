import 'package:future/entities/transaction/model/transaction_model.dart';
import 'package:future/shared/extensions/date_time_extensions.dart';
import 'package:future/shared/lib/supabase/instance.dart';

class TransactionService {
  Future<Map<String, num>> getTransactions() async {
    try {
      final now = DateTime.now();
      final startOfDay = now.startOfDayIsoString();
      final endOfDay = now.endOfDayIsoString();

      final response = await supabase
          .from('transactions')
          .select('type, total_amount:amount.sum()')
          .isFilter('deleted_at', null)
          .gte('date', startOfDay)
          .lte('date', endOfDay);

      num income = 0;
      num expense = 0;

      for (var item in response) {
        if (item['type'] == TransactionType.income.name.toUpperCase()) {
          income = item['total_amount'] ?? 0;
        } else if (item['type'] == TransactionType.expense.name.toUpperCase()) {
          expense = item['total_amount'] ?? 0;
        }
      }

      return {'income': income, 'expense': expense};
    } catch (e) {
      rethrow;
    }
  }
}
