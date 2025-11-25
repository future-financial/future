import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum TransactionType { income, expense, transfer }

@freezed
abstract class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    int? id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'account_id') required int accountId,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'related_account_id') int? relatedAccountId,
    required num amount,
    required DateTime date,
    String? note,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
    required TransactionType type,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}
