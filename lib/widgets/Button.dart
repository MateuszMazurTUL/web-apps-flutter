import 'package:flutter/material.dart';
import '../utils/utils.dart';

Widget button(callback, btnType, width, height) {
  var colorBtn;
  var charBtn;

  if (btnType == buttonType.Add) {
    colorBtn = Colors.deepPurple;
    charBtn = '+';
  }
  if (btnType == buttonType.Del) {
    colorBtn = Colors.red;
    charBtn = '-';
  }
  if (btnType == buttonType.Select) {
    colorBtn = Colors.deepPurple;
    charBtn = 'Select';
  }

  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      //color: Colors.blueAccent,
      boxShadow: const [
        //BoxShadow(color: Colors.purple, spreadRadius: 3),
      ],
    ),
    // _padding(30,8),
    child: ElevatedButton(
      child: Container(
        width: width,
        height: height,
        child: Center(
          child: Text(charBtn),
        ),
      ),
      onPressed: () => callback(),
      style: ElevatedButton.styleFrom(
        primary: colorBtn,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );
}
