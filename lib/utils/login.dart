class LoginRes {
  final String token;
  final String error;

  LoginRes({required this.token, required this.error});

  factory LoginRes.fromJson(Map<String, dynamic> json) {
    return LoginRes(
      token: json["token"] != null ? json["token"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
}

class LoginReq {
  String email;
  String password;

  LoginReq({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email.trim(),
      'password': password.trim(),
    };

    return map;
  }
}
