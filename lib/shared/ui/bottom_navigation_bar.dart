import 'package:flutter/material.dart';
import 'package:future/shared/constants/colors.dart';
import 'package:future/shared/constants/spacing.dart';
import 'package:future/shared/ui/button.dart';
import 'package:heroicons/heroicons.dart';

class BottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSpacing.horizontal16,
      height: 70,
      width: double.infinity,
      color: Theme.of(context).colorScheme.surface,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _NavItem(
            icon: HeroIcons.home,
            index: 0,
            currentIndex: currentIndex,
            onTap: onTap,
          ),
          AppSpacing.gapH16,
          _NavItem(
            icon: HeroIcons.creditCard,
            index: 1,
            currentIndex: currentIndex,
            onTap: onTap,
          ),
          AppSpacing.gapH16,
          Expanded(child: SizedBox.shrink()),
          AppSpacing.gapH16,
          _NavItem(
            icon: HeroIcons.documentText,
            index: 2,
            currentIndex: currentIndex,
            onTap: onTap,
          ),
          AppSpacing.gapH16,
          _NavItem(
            icon: HeroIcons.chartBar,
            index: 3,
            currentIndex: currentIndex,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final HeroIcons icon;
  final int index;
  final int currentIndex;
  final ValueChanged<int> onTap;

  const _NavItem({
    required this.icon,
    required this.index,
    required this.currentIndex,
    required this.onTap,
  });

  bool get isActive => currentIndex == index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Button(
        variant: ButtonVariant.ghost,
        onPressed: () => onTap(index),
        child: HeroIcon(
          icon,
          size: isActive ? 30 : 25,
          color: isActive
              ? Theme.of(context).colorScheme.primary
              : AppColors.gray300,
          style: isActive ? HeroIconStyle.solid : HeroIconStyle.outline,
        ),
      ),
    );
  }
}
