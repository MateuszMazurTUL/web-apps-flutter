import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'utils.dart';

class Connection {
  Future<LoginRes> login(LoginReq req) async {
    //var url = Uri.parse('https://web-apps-224815.herokuapp.com/root/user/');
    var url = Uri.parse('https://reqres.in/api/login');

    var response = await http.post(url,
        // headers: {
        //   'X-CSRFToken':
        //       '8rhr2VeQTLdpRKqqkAh6MigYBq9pArqj1mzOPPuXKeI0lSwvAz7rKM7T2eLhjYmY',
        //   'Content-Type': 'application/json'
        // },
        body: req.toJson());

    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginRes.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }

    //print('Response status: ${response.statusCode}');
    //print('Response body: ${response.body}');
  }

  getBoards(LoginReq req) async {
    //var url = Uri.parse('https://web-apps-224815.herokuapp.com/root/user/');
    var url = Uri.parse('https://reqres.in/api/login');

    var response = await http.post(url,
        // headers: {
        //   'X-CSRFToken':
        //       '8rhr2VeQTLdpRKqqkAh6MigYBq9pArqj1mzOPPuXKeI0lSwvAz7rKM7T2eLhjYmY',
        //   'Content-Type': 'application/json'
        // },
        body: req.toJson());

    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginRes.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }

    //print('Response status: ${response.statusCode}');
    //print('Response body: ${response.body}');
  }
}
