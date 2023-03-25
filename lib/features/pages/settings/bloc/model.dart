class SettingsModel {
  late final int status;
  late final String message;
  late final Data data;

  SettingsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'] ?? 0;
    message = json['message'] ?? "";
    data = Data.fromJson(json['data']);
  }
}

class Data {
  late final List<Pages> pages;
  late final List<Currencies> currencies;
  late final String version;

  Data.fromJson(Map<String, dynamic> json) {
    pages =
        List.from(json['pages'] ?? []).map((e) => Pages.fromJson(e)).toList();
    currencies = List.from(json['currencies'] ?? [])
        .map((e) => Currencies.fromJson(e))
        .toList();
    version = json['version'] ?? "";
  }
}

class Pages {
  late final int id;
  late final String title;
  late final String contect;

  Pages.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    title = json['title'] ?? "";
    contect = json['contect'] ?? "";
  }
}

class Currencies {
  late final int id;
  late final String name;
  late final String image;
  late final String selected;

  Currencies.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    name = json['name'] ?? "";
    image = json['image'] ?? "";
    selected = json['selected'] ?? "";
  }
}
