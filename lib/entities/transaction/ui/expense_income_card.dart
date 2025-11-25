import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:future/entities/transaction/view_model/transaction_notifier_provider.dart';
import 'package:future/shared/constants/border.dart';
import 'package:future/shared/constants/colors.dart';
import 'package:future/shared/constants/spacing.dart';
import 'package:future/shared/extensions/async_value_extensions.dart';
import 'package:future/shared/extensions/text_extensions.dart';
import 'package:future/shared/lib/currency_formatter/instance.dart';
import 'package:heroicons/heroicons.dart';

class ExpenseIncomeCard extends ConsumerStatefulWidget {
  const ExpenseIncomeCard({super.key});

  @override
  ConsumerState<ExpenseIncomeCard> createState() => _ExpenseIncomeCardState();
}

class _ExpenseIncomeCardState extends ConsumerState<ExpenseIncomeCard> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(transactionNotifierProvider.notifier).fetchTransactions();
    });
  }

  @override
  Widget build(BuildContext context) {
    final transactionState = ref.watch(transactionNotifierProvider);
    final income = transactionState.totalIncome.data;
    final expense = transactionState.totalExpense.data;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _buildCard(
                'Income',
                AppColors.green500,
                HeroIcons.arrowTrendingUp,
                income ?? 0,
              ),
            ),
            AppSpacing.gapH8,
            Expanded(
              child: _buildCard(
                'Expense',
                AppColors.red500,
                HeroIcons.arrowTrendingDown,
                expense ?? 0,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCard(
    String title,
    Color indicatorColor,
    HeroIcons icon,
    num amount,
  ) {
    return Container(
      padding: AppSpacing.p16,
      decoration: BoxDecoration(
        color: AppColors.black.withValues(alpha: 0.05),
        borderRadius: AppBorders.borderRadius16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              HeroIcon(icon, color: indicatorColor),
            ],
          ),
          AppSpacing.gapV8,
          Text(
            AppCurrencyFormatter.format(amount, compact: true),
            style: Theme.of(context).textTheme.headlineSmallBold.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
