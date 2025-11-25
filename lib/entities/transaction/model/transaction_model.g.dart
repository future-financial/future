// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) =>
    _TransactionModel(
      id: (json['id'] as num?)?.toInt(),
      userId: json['user_id'] as String,
      accountId: (json['account_id'] as num).toInt(),
      categoryId: (json['category_id'] as num?)?.toInt(),
      relatedAccountId: (json['related_account_id'] as num?)?.toInt(),
      amount: json['amount'] as num,
      date: DateTime.parse(json['date'] as String),
      note: json['note'] as String?,
      attachmentUrl: json['attachment_url'] as String?,
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$TransactionModelToJson(_TransactionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'account_id': instance.accountId,
      'category_id': instance.categoryId,
      'related_account_id': instance.relatedAccountId,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
      'note': instance.note,
      'attachment_url': instance.attachmentUrl,
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };

const _$TransactionTypeEnumMap = {
  TransactionType.income: 'INCOME',
  TransactionType.expense: 'EXPENSE',
  TransactionType.transfer: 'TRANSFER',
};
