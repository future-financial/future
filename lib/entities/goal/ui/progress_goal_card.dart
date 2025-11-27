import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:future/entities/goal/model/goal_model.dart';
import 'package:future/entities/goal/view_model/goal_notifier_provider.dart';
import 'package:future/shared/constants/border.dart';
import 'package:future/shared/constants/colors.dart';
import 'package:future/shared/constants/spacing.dart';
import 'package:future/shared/extensions/async_value_extensions.dart';
import 'package:future/shared/extensions/build_context_extensions.dart';
import 'package:future/shared/extensions/date_time_extensions.dart';
import 'package:future/shared/extensions/text_extensions.dart';
import 'package:future/shared/helpers/calculate_goal_progress.dart';
import 'package:future/shared/lib/currency_formatter/instance.dart';
import 'package:future/shared/ui/skeleton.dart';

class ProgressGoalCard extends ConsumerStatefulWidget {
  const ProgressGoalCard({super.key});

  @override
  ConsumerState<ProgressGoalCard> createState() => _ProgressGoalCardState();
}

class _ProgressGoalCardState extends ConsumerState<ProgressGoalCard> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(goalNotifierProvider.notifier).fetchPinnedGoal();
    });
  }

  @override
  Widget build(BuildContext context) {
    final goalState = ref.watch(goalNotifierProvider);
    final pinnedGoal = goalState.pinnedGoal.data;

    if (goalState.pinnedGoal.isLoading) {
      return Skeleton(
        width: context.screenWidth,
        height: 120,
        borderRadius: AppBorders.borderRadius12,
      );
    }

    if (pinnedGoal == null) {
      return SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSpacing.gapV16,
        _buildHeader(context),
        AppSpacing.gapV16,
        _buildGoalProgressCard(context, pinnedGoal),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text("Priority Goal", style: Theme.of(context).textTheme.titleMedium),
        GestureDetector(
          onTap: () {
            context.showInfoSnackBar("Feature coming soon!");
          },
          child: Text(
            "See All",
            style: Theme.of(
              context,
            ).textTheme.bodySmall!.copyWith(color: AppColors.gray400),
          ),
        ),
      ],
    );
  }

  Widget _buildGoalProgressCard(BuildContext context, GoalModel pinnedGoal) {
    return GestureDetector(
      onTap: () {
        context.showInfoSnackBar("Feature coming soon!");
      },
      child: Container(
        width: double.infinity,
        padding: AppSpacing.p12,
        decoration: BoxDecoration(
          color: AppColors.offWhite,
          borderRadius: AppBorders.borderRadius12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pinnedGoal.name,
              style: Theme.of(context).textTheme.titleMediumMedium,
            ),
            AppSpacing.gapV8,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  AppCurrencyFormatter.format(pinnedGoal.currentAmount),
                  style: Theme.of(context).textTheme.headlineLargeBold,
                ),
                Text(
                  calculateGoalProgress(
                    pinnedGoal.currentAmount,
                    pinnedGoal.targetAmount,
                  ),
                  style: Theme.of(context).textTheme.bodyMediumBold.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
            AppSpacing.gapV8,

            /// Progress Bar
            LinearProgressIndicator(
              value: calculateGoalProgressValue(
                pinnedGoal.currentAmount,
                pinnedGoal.targetAmount,
              ),
              minHeight: 8,
              borderRadius: AppBorders.borderRadius12,
              valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).colorScheme.primary,
              ),
              // color: AppColors.gray200,
              backgroundColor: AppColors.gray100,
            ),
            AppSpacing.gapV8,

            /// Due Date
            Text(
              "Due: ${pinnedGoal.dueDate?.toFullMonthDayYear()}",
              style: Theme.of(context).textTheme.bodyMediumMedium.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
