import 'package:flutter/material.dart';
import 'package:future/features/add_transaction/ui/add_transaction_button.dart';
import 'package:future/features/buy_asset/ui/buy_asset_button.dart';
import 'package:future/shared/constants/spacing.dart';

class TransactionBottomSheet extends StatelessWidget {
  const TransactionBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSpacing.custom(left: 24, right: 24, top: 0, bottom: 32),
      // height: 180,
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Transactions", style: Theme.of(context).textTheme.titleLarge),
          AppSpacing.gapV24,
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [AddTransactionButton(), BuyAssetButton()],
          ),
        ],
      ),
    );
  }
}
