import 'package:flutter/material.dart';
import 'dart:convert';

import 'pages.dart';
import '../utils/utils.dart';
import '../widgets/widgets.dart';

class Board_view extends StatefulWidget {
  const Board_view({Key? key}) : super(key: key);

  @override
  State<Board_view> createState() => _Board_view();
}

class _Board_view extends State<Board_view> {
  var data = [
    {
      "columnName": "Column#1",
      "taskList": [
        {"title": "Task#1", "description": "Lorem ipsum dolor sit"},
      ]
    },
    {
      "columnName": "Column#2",
      "taskList": [
        {"title": "Task#1", "description": "Lorem ipsum dolor sit"},
        {"title": "Tukan", "description": "21"},
        {"title": "Task#3", "description": "Lorem ipsum dolor sit"},
      ]
    },
    {
      "columnName": "Column#3",
      "taskList": [
        {
          "title": "Chlebek",
          "description":
              "Lorem ipsum dolor sitLorem ipsum dolor sitLorem ipsum dolor sit"
        },
        {"title": "Task#2", "description": "21"},
      ]
    },
  ];

  GetData() {
    Connection;
  }

  _addColumn() {
    setState(() {
      data.add(
        {"columnName": "Column#1", "taskList": []},
      );
    });
  }

  _delColumn() {}

  _addTask() {
    setState(() {
      data.add({"title": "Task#1", "description": "Lorem ipsum dolor sit"});
    });
  }

  _delTask() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 8),
        // direction: Axis.horizontal,
        // direction: Axis.horizontal,
        children: [
          Menu_logged(),
          // MediaQuery.of(context).size.width >= 980
          //     ? Menu()
          //     : SizedBox(), // Responsive
          Body_Board_View(data, _addColumn, _delColumn, _addTask, _delTask),
        ],
      ), // This t
    );
  }
}

class Body_Board_View extends StatelessWidget {
  var data;
  var addColumn;
  var delColumn;
  var addTask;
  var delTask;

  Body_Board_View(List<Map<String, Object>> data, Function() addColumn,
      Function() delColumn, Function() addTask, Function() delTask) {
    this.data = data;
    this.addColumn = addColumn;
    this.delColumn = delColumn;
    this.addTask = addTask;
    this.delTask = delTask;
  }

  @override
  Widget build(BuildContext context) {
    return buildColumns(data, addColumn, delColumn, addTask, delTask);
  }
}
