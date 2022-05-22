import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'pages.dart';
import '../utils/utils.dart';

class Boards_page extends StatefulWidget {
  const Boards_page({Key? key}) : super(key: key);

  @override
  State<Boards_page> createState() => _Boards_page();
}

class _Boards_page extends State<Boards_page> {

  TextEditingController inputNewBoardNameController = TextEditingController();
  var data = [
    {
      "boardName": "Board#1",
      "boardId": "Board#1",
    },
    {
      "boardName": "Board#2",
    },
    {
      "boardName": "Board#3",
    },
    {
      "boardName": "Board#4",
    },
    {
      "boardName": "Board#5",
    },
  ];

  GetData() {
    Connection.getBoards()
  }

  Future<void> _addNewBoard() async {

    await PopoutInputText(context, "Name your board", inputNewBoardNameController);
    // print(inputNewBoardNameController.text);
    if(inputNewBoardNameController.text != ""){
      setState(() {
        data.add({"boardName":inputNewBoardNameController.text});
      });
    }
  }

  void _delBoard() {
    setState(() {
      data.removeLast();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 8),
        children: [
          Menu_logged(),
          Body_Boards_Page(data, _addNewBoard, _delBoard),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Body_Boards_Page extends StatelessWidget {
  var data;
  var _addNewBoard;
  var _delBoard;

  // List<Map<String, String>> data;
  Body_Boards_Page(List<Map<String, String>> data, void Function() _addNewBoard, void Function() _delBoard)
  {
    this.data = data;
    this._addNewBoard = _addNewBoard;
    this._delBoard = _delBoard;
  }
  @override
  Widget build(BuildContext context) {
    return buildBoards(this.data, context, _addNewBoard, _delBoard);
  }
}
