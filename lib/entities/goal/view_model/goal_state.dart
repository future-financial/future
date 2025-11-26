import 'package:future/entities/goal/model/goal_model.dart';
import 'package:future/shared/state/async_value.dart';

class GoalState {
  final AsyncValue<GoalModel?> pinnedGoal;

  GoalState({this.pinnedGoal = const AsyncValue.data(null)});

  GoalState copyWith({AsyncValue<GoalModel?>? pinnedGoal}) {
    return GoalState(pinnedGoal: pinnedGoal ?? this.pinnedGoal);
  }
}
