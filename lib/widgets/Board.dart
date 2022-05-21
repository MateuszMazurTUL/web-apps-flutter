import 'package:flutter/material.dart';
import 'package:myapp/utils/constant.dart';
import '../pages/pages.dart';
import 'widgets.dart';

Widget buildBoards(data, context, callbackAddBoard, callbackDelBoard) {
  List<Widget> list = <Widget>[];
  for (var board in data) {
    list.add(boards(board, context, callbackAddBoard, callbackDelBoard));
    list.add(padding(30, 0));
  }

  list.add(padding(0, 30));
  list.add(
    button(callbackAddBoard, buttonType.Add, 200, 40),
  );

  // return Row();
  return Column(children: list);
}

Widget boards(data, context, callbackAddBoard, callbackDelBoard) {
  return Padding(
    padding:
        EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height / 24),
    child: Container(
      width: 440,
      child: singleBoard(context, data["boardName"], "Maciek", callbackDelBoard),
    ),
  );
}

Widget singleBoard(BuildContext context, String Name, String owner, callbackDelBoard) {
  _switchPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Board_view()),
    );
  }

  return Container(
    //color: Colors.blueAccent,
    // padding: 20,
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
    height: 50,
    width: 500,
    child: Row(
      children: [
        padding(20, 0),
        Text(
          Name,
          style: TextStyle(
            color: Colors.deepPurple,
          ),
        ),
        Padding(padding: const EdgeInsets.only(left: 60)),
        button(_switchPage, buttonType.Select, 80, 50),
        padding(10, 0),
        button(callbackDelBoard, buttonType.Del, 20, 50),
      ],
    ),
  );
}
