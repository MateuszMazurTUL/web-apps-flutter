import 'package:flutter/material.dart';
import 'package:myapp/pages/pages.dart';
import 'package:myapp/utils/global.dart';

class Menu_logged extends StatelessWidget {
  _loggout(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Login_page(title: "Login")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //_menuButton(0, 'Login', context),
              _usernameText(Global.userLogin),
              SizedBox(width: 30),
              _loggoutBtn('Loggout', context),
              SizedBox(width: 30),
              _switchPageToBoards('All boards', context),
              // _menuItem(title: 'Sign In', isActive: true),
              // _registerButton(context)
            ],
          ),
        ],
      ),
    );
  }

  Widget _usernameText(String username) {
    return Text(username);
  }

  Widget _loggoutBtn(String title, BuildContext context, {isActive = false}) {
    return ElevatedButton(
      child: Container(
        child: Column(
          children: [
            Text(
              '$title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
      onPressed: () => _loggout(context),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.deepPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }

  Widget _switchPageToBoards(String title, BuildContext context,
      {isActive = false}) {
    return ElevatedButton(
      child: Container(
        child: Column(
          children: [
            Text(
              '$title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
      onPressed: () => _switchPage(context),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.deepPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }

  _switchPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Boards_page()),
    );
  }
}
