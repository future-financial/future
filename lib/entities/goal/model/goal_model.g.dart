// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GoalModel _$GoalModelFromJson(Map<String, dynamic> json) => _GoalModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String,
  description: json['description'] as String?,
  targetAmount: (json['target_amount'] as num).toDouble(),
  currentAmount: (json['current_amount'] as num).toDouble(),
  dueDate: json['due_date'] == null
      ? null
      : DateTime.parse(json['due_date'] as String),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  isPinned: json['is_pinned'] as bool,
  userId: json['user_id'] as String,
  isCompleted: json['is_completed'] as bool,
  completedAt: json['completed_at'] == null
      ? null
      : DateTime.parse(json['completed_at'] as String),
);

Map<String, dynamic> _$GoalModelToJson(_GoalModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'target_amount': instance.targetAmount,
      'current_amount': instance.currentAmount,
      'due_date': instance.dueDate?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'is_pinned': instance.isPinned,
      'user_id': instance.userId,
      'is_completed': instance.isCompleted,
      'completed_at': instance.completedAt?.toIso8601String(),
    };
