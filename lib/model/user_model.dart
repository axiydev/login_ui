class UserModel {
  int? age;
  String? name;
  String? profession;
  UserModel.fromJson(Map<String, dynamic> json)
      : age = json['age'],
        name = json['name'],
        profession = json['profession'];

  Map<String, dynamic> get toJson {
    return {'age': age, 'name': name, 'profession': profession};
  }
}
