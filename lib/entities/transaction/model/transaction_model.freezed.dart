// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionModel {

 int? get id;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'account_id') int get accountId;@JsonKey(name: 'category_id') int? get categoryId;@JsonKey(name: 'related_account_id') int? get relatedAccountId; num get amount; DateTime get date; String? get note;@JsonKey(name: 'attachment_url') String? get attachmentUrl; TransactionType get type;@JsonKey(name: 'deleted_at') DateTime? get deletedAt;
/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionModelCopyWith<TransactionModel> get copyWith => _$TransactionModelCopyWithImpl<TransactionModel>(this as TransactionModel, _$identity);

  /// Serializes this TransactionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.relatedAccountId, relatedAccountId) || other.relatedAccountId == relatedAccountId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.date, date) || other.date == date)&&(identical(other.note, note) || other.note == note)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.type, type) || other.type == type)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,accountId,categoryId,relatedAccountId,amount,date,note,attachmentUrl,type,deletedAt);

@override
String toString() {
  return 'TransactionModel(id: $id, userId: $userId, accountId: $accountId, categoryId: $categoryId, relatedAccountId: $relatedAccountId, amount: $amount, date: $date, note: $note, attachmentUrl: $attachmentUrl, type: $type, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class $TransactionModelCopyWith<$Res>  {
  factory $TransactionModelCopyWith(TransactionModel value, $Res Function(TransactionModel) _then) = _$TransactionModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'account_id') int accountId,@JsonKey(name: 'category_id') int? categoryId,@JsonKey(name: 'related_account_id') int? relatedAccountId, num amount, DateTime date, String? note,@JsonKey(name: 'attachment_url') String? attachmentUrl, TransactionType type,@JsonKey(name: 'deleted_at') DateTime? deletedAt
});




}
/// @nodoc
class _$TransactionModelCopyWithImpl<$Res>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._self, this._then);

  final TransactionModel _self;
  final $Res Function(TransactionModel) _then;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = null,Object? accountId = null,Object? categoryId = freezed,Object? relatedAccountId = freezed,Object? amount = null,Object? date = null,Object? note = freezed,Object? attachmentUrl = freezed,Object? type = null,Object? deletedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as int,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,relatedAccountId: freezed == relatedAccountId ? _self.relatedAccountId : relatedAccountId // ignore: cast_nullable_to_non_nullable
as int?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionModel].
extension TransactionModelPatterns on TransactionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'account_id')  int accountId, @JsonKey(name: 'category_id')  int? categoryId, @JsonKey(name: 'related_account_id')  int? relatedAccountId,  num amount,  DateTime date,  String? note, @JsonKey(name: 'attachment_url')  String? attachmentUrl,  TransactionType type, @JsonKey(name: 'deleted_at')  DateTime? deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
return $default(_that.id,_that.userId,_that.accountId,_that.categoryId,_that.relatedAccountId,_that.amount,_that.date,_that.note,_that.attachmentUrl,_that.type,_that.deletedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'account_id')  int accountId, @JsonKey(name: 'category_id')  int? categoryId, @JsonKey(name: 'related_account_id')  int? relatedAccountId,  num amount,  DateTime date,  String? note, @JsonKey(name: 'attachment_url')  String? attachmentUrl,  TransactionType type, @JsonKey(name: 'deleted_at')  DateTime? deletedAt)  $default,) {final _that = this;
switch (_that) {
case _TransactionModel():
return $default(_that.id,_that.userId,_that.accountId,_that.categoryId,_that.relatedAccountId,_that.amount,_that.date,_that.note,_that.attachmentUrl,_that.type,_that.deletedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'account_id')  int accountId, @JsonKey(name: 'category_id')  int? categoryId, @JsonKey(name: 'related_account_id')  int? relatedAccountId,  num amount,  DateTime date,  String? note, @JsonKey(name: 'attachment_url')  String? attachmentUrl,  TransactionType type, @JsonKey(name: 'deleted_at')  DateTime? deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
return $default(_that.id,_that.userId,_that.accountId,_that.categoryId,_that.relatedAccountId,_that.amount,_that.date,_that.note,_that.attachmentUrl,_that.type,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionModel implements TransactionModel {
  const _TransactionModel({this.id, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'account_id') required this.accountId, @JsonKey(name: 'category_id') this.categoryId, @JsonKey(name: 'related_account_id') this.relatedAccountId, required this.amount, required this.date, this.note, @JsonKey(name: 'attachment_url') this.attachmentUrl, required this.type, @JsonKey(name: 'deleted_at') this.deletedAt});
  factory _TransactionModel.fromJson(Map<String, dynamic> json) => _$TransactionModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'account_id') final  int accountId;
@override@JsonKey(name: 'category_id') final  int? categoryId;
@override@JsonKey(name: 'related_account_id') final  int? relatedAccountId;
@override final  num amount;
@override final  DateTime date;
@override final  String? note;
@override@JsonKey(name: 'attachment_url') final  String? attachmentUrl;
@override final  TransactionType type;
@override@JsonKey(name: 'deleted_at') final  DateTime? deletedAt;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionModelCopyWith<_TransactionModel> get copyWith => __$TransactionModelCopyWithImpl<_TransactionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.relatedAccountId, relatedAccountId) || other.relatedAccountId == relatedAccountId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.date, date) || other.date == date)&&(identical(other.note, note) || other.note == note)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.type, type) || other.type == type)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,accountId,categoryId,relatedAccountId,amount,date,note,attachmentUrl,type,deletedAt);

@override
String toString() {
  return 'TransactionModel(id: $id, userId: $userId, accountId: $accountId, categoryId: $categoryId, relatedAccountId: $relatedAccountId, amount: $amount, date: $date, note: $note, attachmentUrl: $attachmentUrl, type: $type, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$TransactionModelCopyWith<$Res> implements $TransactionModelCopyWith<$Res> {
  factory _$TransactionModelCopyWith(_TransactionModel value, $Res Function(_TransactionModel) _then) = __$TransactionModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'account_id') int accountId,@JsonKey(name: 'category_id') int? categoryId,@JsonKey(name: 'related_account_id') int? relatedAccountId, num amount, DateTime date, String? note,@JsonKey(name: 'attachment_url') String? attachmentUrl, TransactionType type,@JsonKey(name: 'deleted_at') DateTime? deletedAt
});




}
/// @nodoc
class __$TransactionModelCopyWithImpl<$Res>
    implements _$TransactionModelCopyWith<$Res> {
  __$TransactionModelCopyWithImpl(this._self, this._then);

  final _TransactionModel _self;
  final $Res Function(_TransactionModel) _then;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = null,Object? accountId = null,Object? categoryId = freezed,Object? relatedAccountId = freezed,Object? amount = null,Object? date = null,Object? note = freezed,Object? attachmentUrl = freezed,Object? type = null,Object? deletedAt = freezed,}) {
  return _then(_TransactionModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as int,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,relatedAccountId: freezed == relatedAccountId ? _self.relatedAccountId : relatedAccountId // ignore: cast_nullable_to_non_nullable
as int?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
