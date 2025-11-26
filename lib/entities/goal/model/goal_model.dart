import 'package:freezed_annotation/freezed_annotation.dart';

part 'goal_model.freezed.dart';
part 'goal_model.g.dart';

@freezed
abstract class GoalModel with _$GoalModel {
  const factory GoalModel({
    int? id,
    required String name,
    String? description,
    @JsonKey(name: 'target_amount') required double targetAmount,
    @JsonKey(name: 'current_amount') required double currentAmount,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'is_pinned') required bool isPinned,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'is_completed') required bool isCompleted,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
  }) = _GoalModel;

  factory GoalModel.fromJson(Map<String, dynamic> json) =>
      _$GoalModelFromJson(json);
}
