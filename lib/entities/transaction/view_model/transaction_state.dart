import 'package:future/shared/state/async_value.dart';

class TransactionState {
  final AsyncValue<num> totalExpense;
  final AsyncValue<num> totalIncome;

  TransactionState({
    this.totalExpense = const AsyncValue.data(0),
    this.totalIncome = const AsyncValue.data(0),
  });

  TransactionState copyWith({
    AsyncValue<num>? totalExpense,
    AsyncValue<num>? totalIncome,
  }) {
    return TransactionState(
      totalExpense: totalExpense ?? this.totalExpense,
      totalIncome: totalIncome ?? this.totalIncome,
    );
  }
}
