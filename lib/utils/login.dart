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
  String print(){
    String str = "a";
    return str;
  }
}

class LoginReq {
  String login;
  String passwd;
  // String first_name;
  // String last_name;
  // String email;

  LoginReq({
    required this.login,
    required this.passwd,
  //   required this.first_name,
  //   required this.last_name,
  //   required this.email,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'login': login.trim(),
      'passwd': passwd.trim(),
      // 'first_name': first_name.trim(),
      // 'last_name': last_name.trim(),
      // 'email': email.trim(),
    };

    return map;
  }
}

class RegisterRes {
  final String token;
  final String error;

  RegisterRes({required this.token, required this.error});

  factory RegisterRes.fromJson(Map<String, dynamic> json) {
    return RegisterRes(
      token: json["token"] != null ? json["token"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
  String print(){
    String str = "a";
    return str;
  }
}

class RegisterReq {
  String username;
  String password;
  String first_name;
  String last_name;
  String email;

  RegisterReq({
    required this.username,
    required this.password,
    required this.first_name,
    required this.last_name,
    required this.email,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'username': username.trim(),
      'password': password.trim(),
      'first_name': first_name.trim(),
      'last_name': last_name.trim(),
      'email': email.trim(),
    };

    return map;
  }
}

class loginStatusRes {
  final String token;
  final String error;

  loginStatusRes({required this.token, required this.error});

  factory loginStatusRes.fromJson(Map<String, dynamic> json) {
    return loginStatusRes(
      token: json["Active account"] != null ? json["Active account"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
  String print(){
    String str = "a";
    return str;
  }
}
