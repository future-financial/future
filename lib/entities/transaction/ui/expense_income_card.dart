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
      ref
          .read(transactionNotifierProvider.notifier)
          .fetchTodayIncomeAndExpenses();
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
                Theme.of(context).colorScheme.primary,
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
      padding: AppSpacing.p12,
      decoration: BoxDecoration(
        color: AppColors.offWhite,
        borderRadius: AppBorders.borderRadius12,
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
                style: Theme.of(context).textTheme.bodyMediumMedium.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              HeroIcon(icon, color: indicatorColor),
            ],
          ),
          Text(
            AppCurrencyFormatter.format(amount),
            style: Theme.of(context).textTheme.headlineMediumBold.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: amount >= 1000000 ? 20 : 24,
            ),
          ),
        ],
      ),
    );
  }
}
