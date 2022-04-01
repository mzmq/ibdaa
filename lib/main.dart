import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './models/vendors_provider.dart';
import 'package:ibdaa/style/colorapp.dart';
import 'package:ibdaa/screens/workers_details_screen.dart';
import './models/category_provider.dart';
import 'screens/login.dart';
import './models/users_provider.dart';

void main() {
  runApp( MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx)=> VendorProvider()) ,
        ChangeNotifierProvider(create: (ctx)=> CategoryProvider()) ,
        ChangeNotifierProvider(create: (ctx)=> UserProvider()) ,
      ],
      child: MyApp()));
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
