import 'package:future/entities/transaction/model/transaction_model.dart';
import 'package:future/shared/state/async_value.dart';

class TransactionState {
  final AsyncValue<num> totalExpense;
  final AsyncValue<num> totalIncome;
  final AsyncValue<List<TransactionModel>> todayTransactions;

  TransactionState({
    this.totalExpense = const AsyncValue.data(0),
    this.totalIncome = const AsyncValue.data(0),
    this.todayTransactions = const AsyncValue.data([]),
  });

  TransactionState copyWith({
    AsyncValue<num>? totalExpense,
    AsyncValue<num>? totalIncome,
    AsyncValue<List<TransactionModel>>? todayTransactions,
  }) {
    return TransactionState(
      totalExpense: totalExpense ?? this.totalExpense,
      totalIncome: totalIncome ?? this.totalIncome,
      todayTransactions: todayTransactions ?? this.todayTransactions,
    );
  }
}
