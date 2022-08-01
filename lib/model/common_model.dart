import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login_ui/model/user_model.dart';

part 'common_model.freezed.dart';
part 'common_model.g.dart';

@freezed
class CommonModel with _$CommonModel {
  const factory CommonModel({
    required int code,
    required List<UserModel> data,
  }) = _CommonModel;

  factory CommonModel.fromJson(Map<String, Object?> json) =>
      _$CommonModelFromJson(json);
}
