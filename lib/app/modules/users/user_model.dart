class UserModel {
  String id;
  String name;
  UserModel({this.id, this.name});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(id: json['id'], name: json['name']);
  }

  factory UserModel.fromMap(Map<String, dynamic> json) =>
      UserModel(id: json["id"], name: json['name']);

  static List<UserModel> fromJsonList(List list) {
    if (list == null) return null;
    return list
        .map((item) => item.cast<String, dynamic>())
        .map<UserModel>((item) => UserModel.fromMap(item))
        .toList();
  }
}
