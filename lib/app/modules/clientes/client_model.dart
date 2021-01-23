class ClientModel {
  String id;
  String name;
  String localizacao;

  ClientModel({this.id, this.name, this.localizacao});

  factory ClientModel.fromJson(Map<String, dynamic> json) {
    return ClientModel(id: json['id'], name: json['name']);
  }

  factory ClientModel.fromMap(Map<String, dynamic> json) =>
      ClientModel(id: json["id"], name: json["name"]);

  static List<ClientModel> fromJsonList(List list) {
    if (list == null) return null;
    return list
        .map((item) => item.cast<String, dynamic>())
        .map<ClientModel>((item) => ClientModel.fromMap(item))
        .toList();
  }
}
