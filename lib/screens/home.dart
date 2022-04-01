

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ibdaa/style/colorapp.dart';
import 'package:ibdaa/screens/workers.dart';

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
        'page': const Scaffold(
          body: Center(
            child: Text('المحلات'),
          ),
        ),
        'title': 'Scaffold 1 ',
      },
      {
        'page':  Scaffold(
          body:  Column(
            children: [
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      label:  Text('Search'),
                      hintText: 'Search Bar',
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.search_outlined))),
                  keyboardType: TextInputType.text,
                ),
              ),
              Expanded(
                child: Container(
                  child: ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            buildInkWellCard(context,
                                NextPage: Workers() ,
                                url: 'assets/images/qqq.jpg',
                                textTitleCard: 'العهد للصيانة العامة'),

                            buildInkWellCard(context,
                                NextPage: Workers() ,
                                url: 'assets/images/plumbing.jpg',
                                textTitleCard: 'سباكة'),

                            buildInkWellCard(context,
                                NextPage: Workers() ,
                                url: 'assets/images/Electrician.jpg',
                                textTitleCard: 'كهربائي'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
        'title': 'Scaffold 2 ',
      },
      {
        'page': const Scaffold(
          body: Center(
            child: Text('0776806499'),
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
          'Home',
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
        selectedLabelStyle:  TextStyle(
          color: darkGray,

        ),
        // --------------------------------------------2) Create Bottom Navigation Bar Item
        items:  [
          BottomNavigationBarItem(
            backgroundColor: darkGray,
            icon: Icon(Icons.add_business , color: gold),
            label: 'Vendors',
          ),
          BottomNavigationBarItem(
            backgroundColor: darkGray,
            icon: Icon(Icons.engineering , color: gold,),
            label: 'Workers',
          ),
          BottomNavigationBarItem(
            backgroundColor: darkGray,
            icon: Icon(Icons.phone , color: gold,),
            label: 'اتصل بنا',
          ),
        ],
      ),
    );


  }

  InkWell buildInkWellCard(BuildContext context,
      {required String url, required String textTitleCard ,required NextPage}) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => NextPage));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 10,
        color: ColorStyle().lightGray,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                url,
                fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.only(top:0 , left: 90),

                height: 70,
                width: double.infinity,
                child: Card(

                  color: Colors.black87,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(50) )
                  ),
                  child: Container(
                    child: Center(
                      child: Text(
                        textTitleCard,
                        style: TextStyle(fontSize: 30, color: ColorStyle().gold , fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



