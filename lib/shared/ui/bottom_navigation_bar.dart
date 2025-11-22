import 'package:flutter/material.dart';
import 'package:future/shared/constants/colors.dart';
import 'package:future/shared/constants/spacing.dart';
import 'package:future/shared/extensions/build_context_extensions.dart';
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
          _CenterAddButton(),
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

class _CenterAddButton extends StatelessWidget {
  const _CenterAddButton();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -20,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 60,
                width: 60,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.primaryContainer,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.plum700.withValues(alpha: 0.3),
                      blurRadius: 5,
                      offset: const Offset(0, 0),
                      spreadRadius: 3,
                    ),
                  ],
                ),
                child: Button(
                  variant: ButtonVariant.ghost,
                  onPressed: () {
                    context.showInfoSnackBar(
                      "Add new transaction is coming soon!",
                    );
                  },
                  child: HeroIcon(
                    HeroIcons.plus,
                    color: Theme.of(context).colorScheme.onPrimary,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
