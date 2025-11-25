import 'package:future/entities/account/ui/balance.dart';
import 'package:flutter/material.dart';
import 'package:future/entities/transaction/ui/expense_income_card.dart';
import 'package:future/shared/constants/spacing.dart';
import 'package:future/widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacing.p16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              AppSpacing.gapV24,
              Balance(),
              AppSpacing.gapV24,
              ExpenseIncomeCard(),
            ],
          ),
        ),
      ),
    );
  }
}
