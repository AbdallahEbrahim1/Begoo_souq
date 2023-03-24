class CurrenciesModel {
  late final int status;
  late final String message;
  late final List<Data> data;

  CurrenciesModel.fromJson(Map<String, dynamic> json) {
    status = json['status'] ?? 0;
    message = json['message'] ?? "";
    data = List.from(json['data'] ?? []).map((e) => Data.fromJson(e)).toList();
  }
}

class Data {
  late final int id;
  late final String name;
  late final String image;
  late final String selected;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    name = json['name'] ?? "";
    image = json['image'] ?? "";
    selected = json['selected'] ?? "";
  }
}
