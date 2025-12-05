import 'package:flutter/material.dart';
import 'package:future/entities/transaction/ui/transaction_button.dart';
import 'package:future/shared/extensions/build_context_extensions.dart';
import 'package:heroicons/heroicons.dart';

class BuyAssetButton extends StatelessWidget {
  const BuyAssetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TransactionButton(
      label: "Buy Asset",
      onPressed: () {
        context.showInfoSnackBar("Buy Asset button pressed");
        context.hideBottomSheet();
      },
      icon: HeroIcons.shoppingCart,
    );
  }
}
