import 'package:flutter/material.dart';

import 'pages.dart';
import '../utils/utils.dart';

class Board_view extends StatefulWidget {
  const Board_view({Key? key}) : super(key: key);

  @override
  State<Board_view> createState() => _Board_view();
}

class _Board_view extends State<Board_view> {
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
          Body_Board_View(),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Body_Board_View extends StatelessWidget {
  late List dataBoard;

  //Body_Boards_Page() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blueAccent,
      //padding: 20,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      //   //color: Colors.blueAccent,
      //   boxShadow: [
      //     BoxShadow(color: Colors.blueAccent, spreadRadius: 3),
      //   ],
      // ),
      // height: 50,
      // width: 200,
      child: Row(
        children: [
          Padding(padding: const EdgeInsets.only(left: 20)),
          _columnTask("ToDo", _singleTask()),
          Padding(padding: const EdgeInsets.only(left: 20)),
          _columnTask("Doing", _singleTask()),
          Padding(padding: const EdgeInsets.only(left: 20)),
          _columnTask("Done", _singleTask()),
          Padding(padding: const EdgeInsets.only(left: 20)),
          _columnTask("Canceled", _singleTask()),
        ],
      ),
    );
  }

//
  Widget _columnTask(String ColName, Widget task) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //color: Colors.blueAccent,
        boxShadow: [
          BoxShadow(color: Colors.blueAccent, spreadRadius: 3),
        ],
      ),
      height: 600,
      width: 200,
      //Padding(padding: const EdgeInsets.only(left: 20)),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //color: Colors.blueAccent,
              boxShadow: [
                BoxShadow(color: Colors.purple, spreadRadius: 3),
              ],
            ),
            child: Text(
              ColName + ":",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          task,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //color: Colors.blueAccent,
              boxShadow: [
                //BoxShadow(color: Colors.purple, spreadRadius: 3),
              ],
            ),
            child: ElevatedButton(
              child: Container(
                width: 100,
                height: 50,
                child: Center(
                  child: Text("+"),
                ),
              ),
              onPressed: () => _addTask(),
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
      ),
    );
  }

  Widget _singleTask() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 22, 107, 255),
        boxShadow: [
          BoxShadow(color: Colors.blueAccent, spreadRadius: 3),
        ],
      ),
      //height: 300,
      width: 180,
      //Padding(padding: const EdgeInsets.only(left: 20)),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueAccent,
              boxShadow: [
                // BoxShadow(color: Colors.blueAccent, spreadRadius: 3),
              ],
            ),
            height: 40,
            width: 200,
            child: Text("Title"),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.yellowAccent,
              boxShadow: [
                // BoxShadow(color: Colors.blueAccent, spreadRadius: 3),
              ],
            ),
            height: 80,
            width: 200,
            child: Text("Descripton"),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
              boxShadow: [
                // BoxShadow(color: Colors.blueAccent, spreadRadius: 3),
              ],
            ),
            height: 30,
            width: 200,
            child: Text("Buttons"),
          ),
        ],
      ),
    );
  }

  GetData() {
    Connection;
  }

  _addTask() {}
}
