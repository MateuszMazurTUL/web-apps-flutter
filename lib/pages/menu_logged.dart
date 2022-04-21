import 'package:flutter/material.dart';
import 'package:myapp/pages/pages.dart';

class Menu_logged extends StatelessWidget {
  // int index = 0;

  // Menu(index) {
  //   this.index = index;
  // }

  // final pages = [
  //   Login_page(title: "Login"),
  //   Register_page(title: "Register"),
  // ];

  // _switchPage(int index, BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => pages[index]),
  //   );
  // }

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
              _usernameText("Randy"),
              SizedBox(width: 30),
              _loggoutBtn('Loggout', context),
              // _menuItem(title: 'Sign In', isActive: true),
              // _registerButton(context)
            ],
          ),
        ],
      ),
    );
  }

  // Widget _loggoutBtn({String title = 'Title Menu', isActive = false}) {
  //   return Padding(
  //     padding: const EdgeInsets.only(right: 75),
  //     child: MouseRegion(
  //       cursor: SystemMouseCursors.click,
  //       child: Column(
  //         children: [
  //           Text(
  //             '$title',
  //             style: TextStyle(
  //               fontWeight: FontWeight.bold,
  //               color: isActive ? Colors.deepPurple : Colors.grey,
  //             ),
  //           ),
  //           SizedBox(
  //             height: 6,
  //           ),
  //           isActive
  //               ? Container(
  //                   padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
  //                   decoration: BoxDecoration(
  //                     color: Colors.deepPurple,
  //                     borderRadius: BorderRadius.circular(30),
  //                   ),
  //                 )
  //               : SizedBox()
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget _usernameText(String username) {
    return Text(username);
  }

  Widget _loggoutBtn(String title, BuildContext context, {isActive = false}) {
    return ElevatedButton(
      child: Container(
        //width: double.infinity,
        //height: 50,
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
      // ignore: avoid_print
      onPressed: () => _loggout(context),
      //print("it's pressed"),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.deepPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
