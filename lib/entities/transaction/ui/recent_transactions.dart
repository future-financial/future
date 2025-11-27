import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide AsyncValue;
import 'package:future/entities/transaction/model/transaction_model.dart';
import 'package:future/entities/transaction/view_model/transaction_notifier_provider.dart';
import 'package:future/shared/constants/border.dart';
import 'package:future/shared/constants/colors.dart';
import 'package:future/shared/constants/spacing.dart';
import 'package:future/shared/extensions/async_value_extensions.dart';
import 'package:future/shared/extensions/string_extensions.dart';
import 'package:future/shared/extensions/text_extensions.dart';
import 'package:future/shared/lib/currency_formatter/instance.dart';
import 'package:future/shared/state/async_value.dart';
import 'package:future/shared/ui/skeleton.dart';
import 'package:heroicons/heroicons.dart';

class RecentTransactions extends ConsumerStatefulWidget {
  const RecentTransactions({super.key});

  @override
  ConsumerState<RecentTransactions> createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends ConsumerState<RecentTransactions> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(transactionNotifierProvider.notifier).fetchTodayTransactions();
    });
  }

  @override
  Widget build(BuildContext context) {
    final transactionState = ref.watch(transactionNotifierProvider);

    return Container(
      decoration: BoxDecoration(
        color: AppColors.offWhite,
        borderRadius: AppBorders.borderRadius12,
      ),
      width: double.infinity,
      padding: AppSpacing.p12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Today\'s Transactions',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          AppSpacing.gapV16,
          _buildTransactionList(
            transactionState,
            transactionState.todayTransactions,
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionList(
    dynamic transactionState,
    AsyncValue<List<TransactionModel>>? transactions,
  ) {
    if (transactions?.isLoading ?? false) {
      return _buildLoadingSkeleton();
    }

    if (transactions?.data == null || transactions!.data!.isEmpty) {
      return _buildEmptyState();
    }

    return _buildTransactionItems(transactions.data ?? []);
  }

  Widget _buildLoadingSkeleton() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        3,
        (index) => Padding(
          padding: EdgeInsets.only(bottom: index < 2 ? 16 : 0),
          child: Skeleton(
            width: double.infinity,
            height: 60,
            borderRadius: AppBorders.borderRadius8,
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return SizedBox(
      height: 200,
      child: Center(
        child: Text(
          'No transactions found.',
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: AppColors.gray400),
        ),
      ),
    );
  }

  Widget _buildTransactionItems(List<TransactionModel> transactions) {
    final displayTransactions = transactions.take(5).toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        displayTransactions.length,
        (index) => Padding(
          padding: EdgeInsets.only(
            bottom: index < displayTransactions.length - 1 ? 16 : 0,
          ),
          child: _buildTransactionItem(context, displayTransactions[index]),
        ),
      ),
    );
  }

  Widget _buildTransactionItem(
    BuildContext context,
    TransactionModel transaction,
  ) {
    return Container(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildTransactionIcon(context, transaction.type),
                AppSpacing.gapH8,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        transaction.title,
                        style: Theme.of(context).textTheme.titleLargeMedium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Text(
                        transaction.type.name.capitalize,
                        style: Theme.of(
                          context,
                        ).textTheme.caption.copyWith(color: AppColors.gray400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          AppSpacing.gapH8,
          _buildTransactionAmount(context, transaction),
        ],
      ),
    );
  }

  Widget _buildTransactionAmount(
    BuildContext context,
    TransactionModel transaction,
  ) {
    final isExpense = transaction.type == TransactionType.expense;
    final isTransfer = transaction.type == TransactionType.transfer;
    final amountColor = isExpense ? AppColors.red500 : AppColors.green600;
    final sign = isExpense ? '-' : '+';

    return Text(
      '${isTransfer ? '' : sign}${AppCurrencyFormatter.format(transaction.amount)}',
      style: Theme.of(context).textTheme.bodyMediumMedium.copyWith(
        color: isTransfer ? null : amountColor,
      ),
    );
  }

  Widget _buildTransactionIcon(BuildContext context, TransactionType type) {
    final HeroIcon icon;
    final Color backgroundColor;

    switch (type) {
      case TransactionType.income:
        icon = HeroIcon(HeroIcons.arrowTrendingUp, color: AppColors.green600);
        backgroundColor = AppColors.green50.withValues(alpha: 0.5);
        break;
      case TransactionType.expense:
        icon = HeroIcon(HeroIcons.arrowTrendingDown, color: AppColors.red500);
        backgroundColor = AppColors.red50.withValues(alpha: 0.5);
        break;
      case TransactionType.transfer:
        icon = HeroIcon(HeroIcons.arrowsRightLeft, color: AppColors.cyan500);
        backgroundColor = AppColors.cyan50.withValues(alpha: 0.5);
        break;
    }

    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      child: icon,
    );
  }
}
