import 'package:flutter/material.dart';

import 'pages.dart';
import '../utils/utils.dart';

class Boards_page extends StatefulWidget {
  const Boards_page({Key? key}) : super(key: key);

  @override
  State<Boards_page> createState() => _Boards_page();
}

class _Boards_page extends State<Boards_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 8),
        children: [
          Menu_logged(),
          // MediaQuery.of(context).size.width >= 980
          //     ? Menu()
          //     : SizedBox(), // Responsive
          Body_Boards_Page(),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Body_Boards_Page extends StatelessWidget {
  late List dataBoard;

  //Body_Boards_Page() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 24),
          child: Container(
            width: 320,
            child: _board(context, "Adam", "12-12-2000"),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 24),
          child: Container(
            width: 320,
            child: _board(context, "Bartek", "11-11-2000"),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 24),
          child: Container(
            width: 320,
            child: _board(context, "Celina", "10-10-2000"),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 24),
          child: Container(
            width: 320,
            child: _board(context, "Danka", "9-09-2000"),
          ),
        )
      ],
    );
  }

  Widget _board(BuildContext context, String Name, String Date) {
    return Container(
      //color: Colors.blueAccent,
      //padding: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueAccent,
        boxShadow: [
          BoxShadow(color: Colors.blueAccent, spreadRadius: 3),
        ],
      ),
      height: 50,
      width: 200,
      child: Row(
        children: [
          Padding(padding: const EdgeInsets.only(left: 20)),
          Text(
            Name,
            style: TextStyle(
              color: Colors.deepPurple,
            ),
          ),
          Padding(padding: const EdgeInsets.only(left: 20)),
          Text(
            Date,
            style: TextStyle(
              color: Colors.deepPurpleAccent,
            ),
          ),
          Padding(padding: const EdgeInsets.only(left: 20)),
          ElevatedButton(
            child: Container(
              width: 100,
              height: 50,
              child: Center(
                child: Text("Select"),
              ),
            ),
            onPressed: () => _switchPage(context),
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }

  GetData() {
    Connection;
  }

  //GoToBoard(BuildContext context) {}

  _switchPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Board_view()),
    );
  }
}
