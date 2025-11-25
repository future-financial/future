import 'package:flutter_riverpod/flutter_riverpod.dart' hide AsyncValue;
import 'package:flutter_riverpod/legacy.dart';
import 'package:future/entities/transaction/service/transaction_service.dart';
import 'package:future/entities/transaction/view_model/transaction_state.dart';
import 'package:future/shared/state/async_value.dart';

class TransactionNotifierProvider extends StateNotifier<TransactionState> {
  final TransactionService _transactionService;

  TransactionNotifierProvider(this._transactionService)
    : super(TransactionState());

  Future<void> fetchTransactions() async {
    try {
      state = state.copyWith(
        totalExpense: const AsyncValue.loading(),
        totalIncome: const AsyncValue.loading(),
      );

      final data = await _transactionService.getTransactions();

      print('Fetched transaction data: $data');

      state = state.copyWith(
        totalExpense: AsyncValue.data(data['expense'] ?? 0),
        totalIncome: AsyncValue.data(data['income'] ?? 0),
      );
    } catch (e) {
      state = state.copyWith(
        totalExpense: AsyncValue.error(e),
        totalIncome: AsyncValue.error(e),
      );
    }
  }
}

final transactionServiceProvider = Provider<TransactionService>(
  (ref) => TransactionService(),
);

final transactionNotifierProvider =
    StateNotifierProvider<TransactionNotifierProvider, TransactionState>(
      (ref) =>
          TransactionNotifierProvider(ref.read(transactionServiceProvider)),
    );
