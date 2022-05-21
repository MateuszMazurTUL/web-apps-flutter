import 'package:flutter/material.dart';
import 'package:myapp/utils/constant.dart';
import 'widgets.dart';

Widget buildColumns(data, callbackAddColumn,callbackDelColumn,callbackAddTask,callbackDelTask) {

  List<Widget> list = <Widget>[];
  for (var column in data) {
    list.add(_columnTask(column,callbackDelColumn,callbackAddTask,callbackDelTask));
    list.add(padding(30, 0));
  }

  list.add(padding(0, 30));
  list.add(
    button(callbackAddColumn,buttonType.Add,20,400),);

  // return Row();
  return Row(
      children: list
  );
}

Widget _columnTask(data, callbackDelColumn,callbackAddTask,callbackDelTask) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
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
    height: 600,
    width: 200,
    //Padding(padding: const EdgeInsets.only(left: 20)),
    child: ListView(
      children: [
        padding(30,2),
        _columnTitle('     '+data["columnName"]),
        padding(30,14),

        buildTasks(data["taskList"],callbackAddTask),

        button(callbackAddTask,buttonType.Add,100,40),
        padding(0,4),
        button(callbackDelColumn,buttonType.Del,100,40),

      ],
    ),
  );
}

Widget _columnTitle(String name) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(6),
      // ignore: prefer_const_literals_to_create_immutables
      boxShadow: [
        const BoxShadow(
          color: Colors.grey,
          spreadRadius: 4,
          blurRadius: 12,
        ),
      ],
    ),
    width: 200,
    child: Text(
      name,
      style: TextStyle(
        color: Colors.purple,
        // height: 5,
        fontSize: 22,
      ),
    ),
  );
}
