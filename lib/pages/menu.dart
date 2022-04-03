import 'package:flutter/material.dart';
import 'package:myapp/pages/pages.dart';

class Menu extends StatelessWidget {
  int index = 0;

  Menu(index) {
    this.index = index;
  }

  final pages = [
    Login_page(title: "Login"),
    Register_page(title: "Register"),
  ];

  _switchPage(int index, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => pages[index]),
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
              _menuButton(0, 'Login', context),
              SizedBox(width: 30),
              _menuButton(1, 'Register', context),
              // _menuItem(title: 'Sign In', isActive: true),
              // _registerButton(context)
            ],
          ),
        ],
      ),
    );
  }

  Widget _menuItem({String title = 'Title Menu', isActive = false}) {
    return Padding(
      padding: const EdgeInsets.only(right: 75),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Column(
          children: [
            Text(
              '$title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isActive ? Colors.deepPurple : Colors.grey,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            isActive
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }

  Widget _menuButton(int index, String title, BuildContext context,
      {isActive = false}) {
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
      onPressed: () => _switchPage(index, context),
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

  Widget _registerButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          const BoxShadow(
            color: Colors.grey,
            spreadRadius: 10,
            blurRadius: 12,
          ),
        ],
      ),
      child: ElevatedButton(
        child: Container(
          //width: double.infinity,
          //height: 50,
          child: const Center(
            child: Text(
              "Register",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
        ),
        // ignore: avoid_print
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const Register_page(title: 'register')),
        ),
        //print("it's pressed"),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.deepPurple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );

    //   child: ElevatedButton(
    //     onPressed: () {
    //       MaterialPageRoute(
    //         builder: (context) => const Register_page(title: 'Register page'),
    //       );
    //     },
    //     child: Text(
    //       'Register',
    //       style: TextStyle(
    //         fontWeight: FontWeight.bold,
    //         color: Colors.black54,
    //       ),
    //     ),
    //   ),
    // );
  }
}
