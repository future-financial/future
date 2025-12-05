import 'package:flutter/material.dart';
import 'package:future/shared/constants/spacing.dart';
import 'package:future/shared/ui/button.dart';
import 'package:heroicons/heroicons.dart';

class TransactionButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final HeroIcons icon;

  const TransactionButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            shape: BoxShape.circle,
            border: Border.all(
              color: Theme.of(context).colorScheme.primary.withAlpha(200),
            ),
          ),
          child: Button(
            onPressed: onPressed,
            variant: ButtonVariant.ghost,
            child: HeroIcon(
              icon,
              color: Theme.of(context).colorScheme.primary,
              size: 28,
            ),
          ),
        ),
        AppSpacing.gapV8,
        Text(label, style: Theme.of(context).textTheme.labelMedium),
      ],
    );
  }
}
