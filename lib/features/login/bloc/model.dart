class LoginModel {
  late UserData data;
  late String status;
  late String message;

  LoginModel.fromJson(Map<String, dynamic> json) {
    data = (json['data'] != null ? UserData.fromJson(json['data']) : null)!;
    status = json['status'] ?? "";
    message = json['message'] ?? "";
  }
}

class UserData {
  late final int id;
  late final String name;
  late final String email;
  late final String code;
  late final String phone;
  late final String authorization;

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    phone = json['phone'] ?? "";
    name = json['name'] ?? "";
    email = json['email'] ?? "";
    code = json['code'] ?? "";
    authorization = json['authorization'] ?? "";
  }
}
