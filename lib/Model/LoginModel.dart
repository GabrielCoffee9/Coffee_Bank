class LoginResponseModel {
  final String token;
  final String error;

  LoginResponseModel({this.token, this.error});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
        token: json["token"] != null ? json["token"] : "",
        error: json["error"] != null ? json["error"] : "");
  }
}

class LoginRequestModel {
  String name;

  LoginRequestModel({this.name});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {'name': name.trim()};
    return map;
  }
}
