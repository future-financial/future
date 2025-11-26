// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoalModel {

 int? get id; String get name; String? get description;@JsonKey(name: 'target_amount') double get targetAmount;@JsonKey(name: 'current_amount') double get currentAmount;@JsonKey(name: 'due_date') DateTime? get dueDate;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'is_pinned') bool get isPinned;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'is_completed') bool get isCompleted;@JsonKey(name: 'completed_at') DateTime? get completedAt;
/// Create a copy of GoalModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoalModelCopyWith<GoalModel> get copyWith => _$GoalModelCopyWithImpl<GoalModel>(this as GoalModel, _$identity);

  /// Serializes this GoalModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoalModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.targetAmount, targetAmount) || other.targetAmount == targetAmount)&&(identical(other.currentAmount, currentAmount) || other.currentAmount == currentAmount)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isPinned, isPinned) || other.isPinned == isPinned)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,targetAmount,currentAmount,dueDate,createdAt,isPinned,userId,isCompleted,completedAt);

@override
String toString() {
  return 'GoalModel(id: $id, name: $name, description: $description, targetAmount: $targetAmount, currentAmount: $currentAmount, dueDate: $dueDate, createdAt: $createdAt, isPinned: $isPinned, userId: $userId, isCompleted: $isCompleted, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class $GoalModelCopyWith<$Res>  {
  factory $GoalModelCopyWith(GoalModel value, $Res Function(GoalModel) _then) = _$GoalModelCopyWithImpl;
@useResult
$Res call({
 int? id, String name, String? description,@JsonKey(name: 'target_amount') double targetAmount,@JsonKey(name: 'current_amount') double currentAmount,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'is_pinned') bool isPinned,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'is_completed') bool isCompleted,@JsonKey(name: 'completed_at') DateTime? completedAt
});




}
/// @nodoc
class _$GoalModelCopyWithImpl<$Res>
    implements $GoalModelCopyWith<$Res> {
  _$GoalModelCopyWithImpl(this._self, this._then);

  final GoalModel _self;
  final $Res Function(GoalModel) _then;

/// Create a copy of GoalModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? description = freezed,Object? targetAmount = null,Object? currentAmount = null,Object? dueDate = freezed,Object? createdAt = freezed,Object? isPinned = null,Object? userId = null,Object? isCompleted = null,Object? completedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,targetAmount: null == targetAmount ? _self.targetAmount : targetAmount // ignore: cast_nullable_to_non_nullable
as double,currentAmount: null == currentAmount ? _self.currentAmount : currentAmount // ignore: cast_nullable_to_non_nullable
as double,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isPinned: null == isPinned ? _self.isPinned : isPinned // ignore: cast_nullable_to_non_nullable
as bool,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [GoalModel].
extension GoalModelPatterns on GoalModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoalModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoalModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoalModel value)  $default,){
final _that = this;
switch (_that) {
case _GoalModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoalModel value)?  $default,){
final _that = this;
switch (_that) {
case _GoalModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String name,  String? description, @JsonKey(name: 'target_amount')  double targetAmount, @JsonKey(name: 'current_amount')  double currentAmount, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'is_pinned')  bool isPinned, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'is_completed')  bool isCompleted, @JsonKey(name: 'completed_at')  DateTime? completedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoalModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.targetAmount,_that.currentAmount,_that.dueDate,_that.createdAt,_that.isPinned,_that.userId,_that.isCompleted,_that.completedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String name,  String? description, @JsonKey(name: 'target_amount')  double targetAmount, @JsonKey(name: 'current_amount')  double currentAmount, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'is_pinned')  bool isPinned, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'is_completed')  bool isCompleted, @JsonKey(name: 'completed_at')  DateTime? completedAt)  $default,) {final _that = this;
switch (_that) {
case _GoalModel():
return $default(_that.id,_that.name,_that.description,_that.targetAmount,_that.currentAmount,_that.dueDate,_that.createdAt,_that.isPinned,_that.userId,_that.isCompleted,_that.completedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String name,  String? description, @JsonKey(name: 'target_amount')  double targetAmount, @JsonKey(name: 'current_amount')  double currentAmount, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'is_pinned')  bool isPinned, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'is_completed')  bool isCompleted, @JsonKey(name: 'completed_at')  DateTime? completedAt)?  $default,) {final _that = this;
switch (_that) {
case _GoalModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.targetAmount,_that.currentAmount,_that.dueDate,_that.createdAt,_that.isPinned,_that.userId,_that.isCompleted,_that.completedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoalModel implements GoalModel {
  const _GoalModel({this.id, required this.name, this.description, @JsonKey(name: 'target_amount') required this.targetAmount, @JsonKey(name: 'current_amount') required this.currentAmount, @JsonKey(name: 'due_date') this.dueDate, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'is_pinned') required this.isPinned, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'is_completed') required this.isCompleted, @JsonKey(name: 'completed_at') this.completedAt});
  factory _GoalModel.fromJson(Map<String, dynamic> json) => _$GoalModelFromJson(json);

@override final  int? id;
@override final  String name;
@override final  String? description;
@override@JsonKey(name: 'target_amount') final  double targetAmount;
@override@JsonKey(name: 'current_amount') final  double currentAmount;
@override@JsonKey(name: 'due_date') final  DateTime? dueDate;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'is_pinned') final  bool isPinned;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'is_completed') final  bool isCompleted;
@override@JsonKey(name: 'completed_at') final  DateTime? completedAt;

/// Create a copy of GoalModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoalModelCopyWith<_GoalModel> get copyWith => __$GoalModelCopyWithImpl<_GoalModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoalModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoalModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.targetAmount, targetAmount) || other.targetAmount == targetAmount)&&(identical(other.currentAmount, currentAmount) || other.currentAmount == currentAmount)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isPinned, isPinned) || other.isPinned == isPinned)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,targetAmount,currentAmount,dueDate,createdAt,isPinned,userId,isCompleted,completedAt);

@override
String toString() {
  return 'GoalModel(id: $id, name: $name, description: $description, targetAmount: $targetAmount, currentAmount: $currentAmount, dueDate: $dueDate, createdAt: $createdAt, isPinned: $isPinned, userId: $userId, isCompleted: $isCompleted, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class _$GoalModelCopyWith<$Res> implements $GoalModelCopyWith<$Res> {
  factory _$GoalModelCopyWith(_GoalModel value, $Res Function(_GoalModel) _then) = __$GoalModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String name, String? description,@JsonKey(name: 'target_amount') double targetAmount,@JsonKey(name: 'current_amount') double currentAmount,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'is_pinned') bool isPinned,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'is_completed') bool isCompleted,@JsonKey(name: 'completed_at') DateTime? completedAt
});




}
/// @nodoc
class __$GoalModelCopyWithImpl<$Res>
    implements _$GoalModelCopyWith<$Res> {
  __$GoalModelCopyWithImpl(this._self, this._then);

  final _GoalModel _self;
  final $Res Function(_GoalModel) _then;

/// Create a copy of GoalModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? description = freezed,Object? targetAmount = null,Object? currentAmount = null,Object? dueDate = freezed,Object? createdAt = freezed,Object? isPinned = null,Object? userId = null,Object? isCompleted = null,Object? completedAt = freezed,}) {
  return _then(_GoalModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,targetAmount: null == targetAmount ? _self.targetAmount : targetAmount // ignore: cast_nullable_to_non_nullable
as double,currentAmount: null == currentAmount ? _self.currentAmount : currentAmount // ignore: cast_nullable_to_non_nullable
as double,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isPinned: null == isPinned ? _self.isPinned : isPinned // ignore: cast_nullable_to_non_nullable
as bool,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
