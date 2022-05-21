import 'package:flutter/material.dart';
import 'package:myapp/utils/constant.dart';
import 'widgets.dart';

Widget buildTasks(data, callbackAdd) {
  List<Widget> list = <Widget>[];

  for (var task in data) {
    list.add(_singleTask(task, callbackAdd));
    list.add(padding(30, 10));
  }
    return Column(children: list);
}

Widget _singleTask(data, callbackAdd) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        const BoxShadow(
          color: Colors.grey,
          spreadRadius: 2,
          blurRadius: 20,
        ),
      ],
    ),
    //height: 300,
    width: 200,

    child: Column(
      children: [
        Container(
          height: 40,
          width: 200,
          child: Text(
            data["title"],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
        ),
        Container(
          height: 80,
          width: 200,
          child: Text(
            data["description"],
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.deepPurpleAccent,
            ),
          ),
        ),
        button(callbackAdd, buttonType.Del, 40, 10)
      ],
    ),
  );
}
