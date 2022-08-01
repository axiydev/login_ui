import 'package:login_ui/model/user_model.dart';

class CommonModel {
  int? code;
  List<UserModel>? data;

  CommonModel.fromJson(Map<String, dynamic> json)
      : code = json['code'],
        data = List<UserModel>.from(
            json['data'].map((user) => UserModel.fromJson(user)));

  Map<String, dynamic> get toJson {
    return {'code': code, "data": data!.map((e) => e.toJson)};
  }
}
