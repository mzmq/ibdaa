

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ibdaa/screens/tech_support.dart';

import '../screens/category_workers_screen.dart';
import 'package:ibdaa/style/colorapp.dart';
import 'package:ibdaa/screens/workers_details_screen.dart';
import '../screens/vendors_screen.dart';

import '../widgets/drawer.dart';
import 'job.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color gold = ColorStyle().gold;

  Color backgroundDark = ColorStyle().backgroundDark;

  Color darkGray = ColorStyle().darkGray;

  Color barDark = ColorStyle().barDark;

  Color w = ColorStyle().w;

  List conList = [
    Container(
      child: Text('con 1'),
    ),
    Container(
      child: Text('con 2'),
    ),
  ];
  int _selectedPageIndex = 0;

  // --------------------------------------------3) Create Select Index
  void _selectIndex(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> _Sides = [
      {
        'page': const VendorsScreen(),
        'title': 'Scaffold 1 ',
      },
      {
        'page': CategoryWorkersScreen(),
        'title': 'Scaffold 2 ',
      },
      {
        'page':  Scaffold(
          body: Center(
            child:TectSupport() ,
          ),
        ),
        'title': 'Scaffold 3 ',
      },
    ];
    return Scaffold(
      appBar: AppBar(

        iconTheme: IconThemeData(color: gold),
        backgroundColor: darkGray,
        title: Text(
          'ابداع',
          style: TextStyle(color: gold),
        ),
      ),
      drawer: DrawerApp(),
      body: _Sides[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: darkGray,
        selectedItemColor: gold,
        unselectedItemColor: Colors.black45,
        currentIndex: _selectedPageIndex,
        selectedFontSize: 17,
        unselectedFontSize: 15,
        type: BottomNavigationBarType.fixed,
        onTap: _selectIndex,
        selectedLabelStyle: TextStyle(
          color: darkGray,

        ),
        // --------------------------------------------2) Create Bottom Navigation Bar Item
        items: [
          BottomNavigationBarItem(
            backgroundColor: darkGray,
            icon: Icon(Icons.add_business, color: gold),
            label: 'متاجر',
          ),
          BottomNavigationBarItem(
            backgroundColor: darkGray,
            icon: Icon(Icons.engineering, color: gold,),
            label: 'عمال',
          ),
          BottomNavigationBarItem(
            backgroundColor: darkGray,
            icon: Icon(Icons.support_agent_outlined, color: gold,),
            label: 'الدعم الفني',
          ),
        ],
      ),
    );
  }
}