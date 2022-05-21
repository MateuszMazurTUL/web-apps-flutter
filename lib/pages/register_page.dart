import 'package:flutter/material.dart';

import '../utils/utils.dart';
import 'pages.dart';

class Register_page extends StatefulWidget {
  const Register_page({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Register_page> createState() => _Register_page();
}

class _Register_page extends State<Register_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5f5f5),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 8),
        children: [
          Menu(1),
          BodyRegister(),
        ],
      ),
    );
  }
}

class BodyRegister extends StatelessWidget {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController password2Controller = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 8),
          child: Container(
            width: 320,
            child: _formRegister(),
          ),
        )
      ],
    );
  }

  Widget _formRegister() {
    return Column(
      children: [
        TextField(
          controller: loginController,
          decoration: InputDecoration(
            hintText: 'Login',
            filled: true,
            fillColor: Colors.blueGrey[50],
            labelStyle: const TextStyle(fontSize: 12),
            contentPadding: const EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        const SizedBox(height: 30),
        TextField(
          obscureText: true,
          controller: passwordController,
          decoration: InputDecoration(
            hintText: 'Password',
            suffixIcon: const Icon(
              Icons.visibility_off_outlined,
              color: Colors.grey,
            ),
            filled: true,
            fillColor: Colors.blueGrey[50],
            labelStyle: const TextStyle(fontSize: 12),
            contentPadding: const EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        const SizedBox(height: 30),
        TextField(
          obscureText: true,
          controller: password2Controller,
          decoration: InputDecoration(
            hintText: 'Repeat password',
            suffixIcon: const Icon(
              Icons.visibility_off_outlined,
              color: Colors.grey,
            ),
            filled: true,
            fillColor: Colors.blueGrey[50],
            labelStyle: const TextStyle(fontSize: 12),
            contentPadding: const EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        const SizedBox(height: 30),
        TextField(
          controller: nameController,
          decoration: InputDecoration(
            hintText: 'Name',
            filled: true,
            fillColor: Colors.blueGrey[50],
            labelStyle: const TextStyle(fontSize: 12),
            contentPadding: const EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        const SizedBox(height: 30),
        TextField(
          controller: surnameController,
          decoration: InputDecoration(
            hintText: 'Surname',
            filled: true,
            fillColor: Colors.blueGrey[50],
            labelStyle: const TextStyle(fontSize: 12),
            contentPadding: const EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        const SizedBox(height: 30),
        TextField(
          controller: emailController,
          decoration: InputDecoration(
            hintText: 'Email',
            filled: true,
            fillColor: Colors.blueGrey[50],
            labelStyle: const TextStyle(fontSize: 12),
            contentPadding: const EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        const SizedBox(height: 40),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Colors.deepPurple,
                spreadRadius: 10,
                blurRadius: 20,
              ),
            ],
          ),
          child: ElevatedButton(
            child: Container(
                width: double.infinity,
                height: 50,
                child: const Center(child: Text("Register"))),
            onPressed: () => RegisterBtn(),
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ],
    );
  }

  RegisterBtn() async {
    //_switchPage(context);

    var con = Connection();
    var req = RegisterReq(
      username: loginController.text,
      password: passwordController.text,
      first_name: nameController.text,
      last_name: surnameController.text,
      email: emailController.text,
    );
    var respond = RegisterRes(error: '', token: '');

    respond = await con.register(req);
    // print('Res:'+respond);
    print('Err:' + respond.error);
    print('Token:' + respond.token);
  }
}
