import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'utils.dart';

class Connection {
  Future<LoginRes> login(LoginReq req) async {
    var url =
    Uri.parse('https://web-apps-224815.herokuapp.com/root/user/login/');

    try {
      var response = await http.post(url,
          headers: {
            "Accept": "application/json",
            "Access-Control_Allow_Origin": "*"
          },
          body: json.encode(req.toJson()));

      if (response.statusCode == 200 || response.statusCode == 400) {
        return LoginRes.fromJson(
          json.decode(response.body),
        );
      } else {
        throw Exception('Failed to load data!');
      }
    } catch (e) {
      print(e);
    }
    print(json.encode(req.toJson()));
    return LoginRes.fromJson(
      json.decode('{"error":"failed"}'),
    );
  }

  Future<RegisterRes> register(RegisterReq req) async {
    var url = Uri.parse(
        'https://web-apps-224815.herokuapp.com/root/user/createAccount/');

    try {
      var response = await http.post(url,
          headers: {
            "Accept": "application/json",
            "Access-Control_Allow_Origin": "*"
          },
          body: json.encode(req.toJson()));

      if (response.statusCode == 200 || response.statusCode == 400) {
        return RegisterRes.fromJson(
          json.decode(response.body),
        );
      } else {
        throw Exception('Failed to load data!');
      }
    } catch (e) {
      print(e);
    }
    print(json.encode(req.toJson()));
    return RegisterRes.fromJson(
      json.decode('{"error":"failed"}'),
    );
  }

  Future<loginStatusRes> loginStatus() async {
    var url = Uri.parse(
        'https://web-apps-224815.herokuapp.com/root/user/loginStatus/');

    try {
      var response = await http.get(url, headers: {
        "Accept": "application/json",
        "Access-Control_Allow_Origin": "*"
      });

      if (response.statusCode == 200 || response.statusCode == 400) {
        return loginStatusRes.fromJson(
          json.decode(response.body),
        );
      } else {
        throw Exception('Failed to load data!');
      }
    } catch (e) {
      print(e);
    }

    return loginStatusRes.fromJson(
      json.decode('{"error":"failed"}'),
    );
  }

  Future<getBoardsRes> getBoards(getBoardsReq req) async {
/*    var url =
    Uri.parse('https://web-apps-224815.herokuapp.com/root/user/login/');

    try {
      var response = await http.post(url,
          headers: {
            "Accept": "application/json",
            "Access-Control_Allow_Origin": "*"
          },
          body: json.encode(req.toJson()));

      if (response.statusCode == 200 || response.statusCode == 400) {
        return getBoardsRes.fromJson(
          json.decode(response.body),
        );
      } else {
        throw Exception('Failed to load data!');
      }
    } catch (e) {
      print(e);
    }
    print(json.encode(req.toJson()));
    return getBoardsRes.fromJson(
      json.decode('{"error":"failed"}'),
    );*/
  }
