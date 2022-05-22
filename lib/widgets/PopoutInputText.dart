import 'package:flutter/material.dart';

Future<TextEditingController?> PopoutInputText(
        context, title, inputNewBoardNameController) =>
    showDialog<TextEditingController>(
      context: context,
      builder: (contex) => AlertDialog(
        title: Text(title),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: inputNewBoardNameController,
              decoration: InputDecoration(
                hintText: 'Text...',
                filled: true,
                // fillColor: Colors.blueGrey[50],
                labelStyle: TextStyle(fontSize: 12),
                contentPadding: EdgeInsets.only(left: 30),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          ElevatedButton(
            child: Container(
                width: 50, height: 30, child: Center(child: Text("Create"))),
            onPressed: () {
              Navigator.of(context).pop(inputNewBoardNameController);
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          ElevatedButton(
            child: Container(
                width: 50, height: 30, child: Center(child: Text("Close"))),
            onPressed: () {
              inputNewBoardNameController.text = "";
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
