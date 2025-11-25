import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum CategoryType { income, expense }

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    int? id,
    required String name,
    required CategoryType type,
    @JsonKey(name: 'user_id') required String userId,
    String? icon,
  }) = _CategoryModel;

  @override
  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
