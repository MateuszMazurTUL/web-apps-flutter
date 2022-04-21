import 'package:flutter/material.dart';

import 'pages/pages.dart';
import 'utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aka Trello',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login_page(title: 'aka Trello'),
    );
  }
}
