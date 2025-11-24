// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountModel _$AccountModelFromJson(Map<String, dynamic> json) =>
    _AccountModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      type: $enumDecode(_$AccountTypeEnumMap, json['type']),
      currency: json['currency'] as String?,
      userId: json['user_id'] as String,
      currentBalance: json['current_balance'] as num,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$AccountModelToJson(_AccountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$AccountTypeEnumMap[instance.type]!,
      'currency': instance.currency,
      'user_id': instance.userId,
      'current_balance': instance.currentBalance,
      'created_at': instance.createdAt.toIso8601String(),
    };

const _$AccountTypeEnumMap = {
  AccountType.bank: 'BANK',
  AccountType.eWallet: 'E_WALLET',
  AccountType.cash: 'CASH',
  AccountType.investmentAccount: 'INVESTMENT_ACCOUNT',
  AccountType.cryptoWallet: 'CRYPTO_WALLET',
};
