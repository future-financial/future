import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:future/entities/account/view_model/account_notifier_provider.dart';
import 'package:future/shared/constants/colors.dart';
import 'package:future/shared/constants/spacing.dart';
import 'package:future/shared/extensions/async_value_extensions.dart';
import 'package:future/shared/extensions/text_extensions.dart';
import 'package:future/shared/lib/currency_formatter/instance.dart';
import 'package:heroicons/heroicons.dart';

class Balance extends ConsumerStatefulWidget {
  const Balance({super.key});

  @override
  ConsumerState<Balance> createState() => _BalanceState();
}

class _BalanceState extends ConsumerState<Balance> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(accountNotifierProvider.notifier).fetchTotalBalance();
    });
  }

  @override
  Widget build(BuildContext context) {
    final accountState = ref.watch(accountNotifierProvider);
    final balance = accountState.totalBalance.data;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total Balance',
          style: Theme.of(context).textTheme.bodyLargeBold.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          AppCurrencyFormatter.format(balance ?? 0),
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        AppSpacing.gapV8,
        Row(
          children: [
            Container(
              width: 35,
              height: 35,
              padding: AppSpacing.p8,
              decoration: BoxDecoration(
                color: AppColors.offWhite,
                shape: BoxShape.circle,
              ),
              child: HeroIcon(
                HeroIcons.arrowTrendingUp,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            AppSpacing.gapH8,

            /// TODO: Replace with dynamic data
            Text.rich(
              TextSpan(
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                children: [
                  const TextSpan(text: "You've earned "),
                  TextSpan(
                    text: '${AppCurrencyFormatter.format(1250)} (10.1%)',
                    style: Theme.of(context).textTheme.bodyMediumBold.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      letterSpacing: -0.5,
                    ),
                  ),
                  const TextSpan(text: ' this month'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
