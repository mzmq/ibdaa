import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/drawer.dart';
import 'home.dart';

class Job extends StatefulWidget {
  const Job({Key? key}) : super(key: key);

  @override
  State<Job> createState() => _JobState();
}
// List<Widget> _Parts = [
//   Scaffold(
//     body: Text('1'),
//   ),
//   Scaffold(
//     body: Text('2'),
//   ),
//   Scaffold(
//     body: Text('3'),
//   ),
// ];

class _JobState extends State<Job> {
  int initialIndex = 0 ;

  void _selectIndex(int index){
    setState(() {
      initialIndex = index ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(

  title: Text('hi Job'),
),
      drawer: DrawerApp(),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectIndex,
          items:  [
        BottomNavigationBarItem(icon: IconButton(onPressed: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> HomePage() ));
        }, icon: Icon(FontAwesomeIcons.user)), label: 'Job') ,
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.shoppingBag) ,label : 'part2') ,
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.shopify) , label: 'part 3')  ,
    ]),
      body: null ,
    );
  }
}
