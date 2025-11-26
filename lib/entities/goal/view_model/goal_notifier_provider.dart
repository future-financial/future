import 'package:flutter_riverpod/flutter_riverpod.dart' hide AsyncValue;
import 'package:flutter_riverpod/legacy.dart';
import 'package:future/entities/goal/service/goal_service.dart';
import 'package:future/entities/goal/view_model/goal_state.dart';
import 'package:future/shared/state/async_value.dart';

class GoalNotifier extends StateNotifier<GoalState> {
  final GoalService _goalService;

  GoalNotifier(this._goalService) : super(GoalState());

  Future<void> fetchPinnedGoal() async {
    try {
      state = state.copyWith(pinnedGoal: AsyncValue.loading());

      final goal = await _goalService.getPinnedGoal();

      state = state.copyWith(pinnedGoal: AsyncValue.data(goal));
    } catch (e) {
      state = state.copyWith(pinnedGoal: AsyncValue.error(e));
    }
  }
}

final goalServiceProvider = Provider<GoalService>((ref) {
  return GoalService();
});

final goalNotifierProvider = StateNotifierProvider<GoalNotifier, GoalState>((
  ref,
) {
  final goalService = ref.watch(goalServiceProvider);
  return GoalNotifier(goalService);
});
