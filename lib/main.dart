import 'package:flutter/material.dart';
import 'package:ibdaa/style/colorapp.dart';
import 'package:ibdaa/screens/workers.dart';

import 'screens/login.dart';

void main() {
  runApp(const MyApp());
}
Color barDark =  ColorStyle().barDark ;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     theme: ThemeData(
        primarySwatch: Colors.blueGrey ,
     ),
      debugShowCheckedModeBanner: false,
      home: const loginApp(),
    );
  }
}
