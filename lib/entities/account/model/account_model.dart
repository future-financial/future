import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum AccountType { bank, eWallet, cash, investmentAccount, cryptoWallet }

@freezed
abstract class AccountModel with _$AccountModel {
  const factory AccountModel({
    int? id,

    required String name,

    required AccountType type,

    String? currency,

    @JsonKey(name: 'user_id') required String userId,

    @JsonKey(name: 'current_balance') required num currentBalance,

    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _AccountModel;

  @override
  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);
}
