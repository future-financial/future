import 'package:flutter/material.dart';
import 'package:future/entities/transaction/ui/transaction_button.dart';
import 'package:future/shared/extensions/build_context_extensions.dart';
import 'package:heroicons/heroicons.dart';

class AddTransactionButton extends StatelessWidget {
  const AddTransactionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TransactionButton(
      label: "Add Transaction",
      onPressed: () {
        context.showInfoSnackBar("Add Transaction button pressed");
        context.hideBottomSheet();
      },
      icon: HeroIcons.plus,
    );
  }
}
