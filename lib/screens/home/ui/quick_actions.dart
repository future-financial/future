import 'package:flutter/material.dart';
import 'package:future/shared/constants/colors.dart';
import 'package:future/shared/constants/spacing.dart';
import 'package:future/shared/extensions/build_context_extensions.dart';
import 'package:future/shared/ui/button.dart';
import 'package:heroicons/heroicons.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Quick Actions", style: Theme.of(context).textTheme.titleMedium),
        AppSpacing.gapV16,
        SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                _buildActionButton(
                  context,
                  "Portfolio",
                  HeroIcons.chartPie,
                  () {
                    context.showInfoSnackBar("Feature coming soon!");
                  },
                ),
                AppSpacing.gapH24,
                _buildActionButton(context, "Goals", HeroIcons.trophy, () {
                  context.showInfoSnackBar("Feature coming soon!");
                }),
                AppSpacing.gapH24,
                _buildActionButton(
                  context,
                  "Debts",
                  HeroIcons.clipboardDocumentList,
                  () {
                    context.showInfoSnackBar("Feature coming soon!");
                  },
                ),
                AppSpacing.gapH24,
                _buildActionButton(
                  context,
                  "Transfer",
                  HeroIcons.arrowPathRoundedSquare,
                  () {
                    context.showInfoSnackBar("Feature coming soon!");
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton(
    BuildContext context,
    String label,
    HeroIcons icon,
    VoidCallback onPressed,
  ) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: AppColors.offWhite,
            shape: BoxShape.circle,
          ),
          child: Button(
            onPressed: onPressed,
            variant: ButtonVariant.ghost,
            child: HeroIcon(
              icon,
              color: Theme.of(context).colorScheme.primary,
              size: 30,
              style: HeroIconStyle.outline,
            ),
          ),
        ),
        AppSpacing.gapV4,
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
