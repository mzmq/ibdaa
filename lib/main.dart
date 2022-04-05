import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './models/vendors_provider.dart';
import 'package:ibdaa/style/colorapp.dart';
import 'package:ibdaa/screens/workers_details_screen.dart';
import './models/category_provider.dart';
import 'screens/login.dart';
import './models/users_provider.dart';
import './models/users.dart';
import './models/product_provider.dart';

void main() {
  runApp( MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx)=> VendorProvider()) ,
        ChangeNotifierProvider(create: (ctx)=> CategoryProvider()) ,
        ChangeNotifierProvider(create: (ctx)=> UserProvider()) ,
        ChangeNotifierProvider(create: (ctx)=> Users()) ,
        ChangeNotifierProvider(create: (ctx)=> ProductProvider()) ,
      ],
      child: MyApp()));
}
Color barDark =  ColorStyle().barDark ;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     localizationsDelegates: GlobalMaterialLocalizations.delegates,
     supportedLocales: [Locale('en'), Locale('ar', 'JO')],
     locale: Locale('ar', 'JO'),
     theme: ThemeData(
        primarySwatch: Colors.blueGrey ,
     ),
      debugShowCheckedModeBanner: false,
      home: const loginApp(),
    );
  }
}
