import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
class ProfileScreen extends StatelessWidget {
   ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الصفحة الشخصية'),
      ),
      drawer: DrawerApp(),
    );
  }
}
