import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:ibdaa/screens/product_screen/edit_product_screen.dart';

import '../screens/profile_screen.dart';
import '../screens/tech_support.dart';
import '../screens/category_workers_screen.dart';
import '../style/colorapp.dart';
import '../screens/vendors_screen.dart';

import '../widgets/btn_cart_widget.dart';
import '../widgets/drawer.dart';
import '../widgets/home_my_worker_widget.dart';
import 'category_vendors_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color gold = ColorStyle().gold;

  Color backgroundDark = ColorStyle().backgroundDark;

  Color darkGray = ColorStyle().darkGray;

  Color barDark = ColorStyle().barDarkApp;

  Color w = ColorStyle().w;

  List conList = [
    Container(
      child: Text('con 1'),
    ),
    Container(
      child: Text('con 2'),
    ),
  ];
  int selectedPageIndex = 0;

  // --------------------------------------------3) Create Select Index
  void selectIndex(int? index) {
    setState(() {
      selectedPageIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> _Sides = [
      {
        'page': CategoryVendorsScreen(),
        'title': 'Scaffold 1 ',
      },
      {
        'page': VendorsScreen(),
        'title': 'Scaffold 2 ',
      },
      {
        'page': Scaffold(
          body: Center(
            child: CategoryWorkersScreen(),
          ),
        ),
        'title': 'Scaffold 3 ',
      },
      {
        'page': Scaffold(
          body: Center(
            child: TectSupport(),
          ),
        ),
        'title': 'Scaffold 4 ',
      },
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading:  Builder(
              builder: (context) {
                return Container(
                  margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorStyle().color1
                    ),
                    child: IconButton(onPressed:  () => Scaffold.of(context).openDrawer(), icon: Icon(Icons.menu ,size: 20, color: Colors.white,)));
              }
          ),
          elevation: 0,
          bottom: TabBar(

            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('اطلب عامل الان',style: TextStyle(color: Colors.black)),
                    SizedBox(width: 7,),
                    Icon(Icons.record_voice_over_outlined ,  color: ColorStyle().color1,)
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text('إبحث عن عامل' ,style: TextStyle(color: Colors.black)),
                    SizedBox(width: 7,),
                    Icon(Icons.person_search_outlined ,  color: ColorStyle().color1,)
                  ],
                ),
              ),
            ],
          ),
          iconTheme: IconThemeData(color: gold),
          backgroundColor: Colors.white,

          actions: [

            BtnCartWidget(),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => ProfileScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50000),
                    child: Image.network(
                      DrawerApp.profileUrl,
                    )),
              ),
            ),
          ],
        ),
        drawer: DrawerApp(),
        body: TabBarView(
          children: [

            HomeMyWorkerWidget(),
            Scaffold(
              body: _Sides[selectedPageIndex]['page'] as Widget,
              floatingActionButton: SpeedDial(

                animatedIcon: AnimatedIcons.menu_close,
                backgroundColor: ColorStyle().color1,
                 children: [
                   SpeedDialChild(
                     elevation: 10 ,
                     label: 'اضافة منتج',
                     child:Icon(Icons.add) ,
                     onTap: (){
                       setState(() {
                         showDialog(context: context, builder: (context)=> Container(
                           width: 400,
                           child: AlertDialog(
                               insetPadding: EdgeInsets.symmetric(vertical: 10) ,

                             content: Container(
                                 width: 400,
                                 child: EditProductScreen()),
                             actions: [
                               TextButton(onPressed: (){
                                 Navigator.of(context).pop(false);
                               }, child: Text('الغاء')),

                             ],
                           ),
                         ));
                       });

                     }
                   ),
                   SpeedDialChild(
                     elevation: 10 ,
                     label: 'بحث',
                     child:Icon(Icons.search) ,
                     onTap: (){
                       setState(() {
                         showDialog(context: context, builder: (context)=> AlertDialog(
                           title: Text('بحث' ,textAlign: TextAlign.center),
                           content: TextFormField(),
                           actions: [
                             TextButton(onPressed: (){
                               Navigator.of(context).pop(false);
                             }, child: Text('الغاء')),
                             TextButton(onPressed: (){


                             }, child: Text('بحث الان')),
                           ],
                         ));
                       });

                     }
                   ),
                 ],
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.startDocked,
              bottomNavigationBar: BubbleBottomBar(
                hasNotch: true,
                fabLocation: BubbleBottomBarFabLocation.end,
                opacity: .2,
                currentIndex: selectedPageIndex,
                onTap: selectIndex,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
                //border radius doesn't work when the notch is enabled.
                elevation: 8,
                tilesPadding: EdgeInsets.symmetric(
                  vertical: 8.0,
                ),
                items: const <BubbleBottomBarItem>[
                  BubbleBottomBarItem(
                    showBadge: true,
                    badge: Text("5"),
                    badgeColor: Colors.deepPurpleAccent,
                    backgroundColor: Colors.red,
                    icon: Icon(
                      Icons.dashboard,
                      color: Colors.black,
                    ),
                    activeIcon: Icon(
                      Icons.dashboard,
                      color: Colors.red,
                    ),
                    title: Text("الاقسام"),
                  ),
                  BubbleBottomBarItem(
                      backgroundColor: Colors.deepPurple,
                      icon: Icon(
                        Icons.store_outlined,
                        color: Colors.black,
                      ),
                      activeIcon: Icon(
                        Icons.store_outlined,
                        color: Colors.deepPurple,
                      ),
                      title: Text("متاجر")),
                  BubbleBottomBarItem(
                      backgroundColor: Colors.indigo,
                      icon: Icon(
                        Icons.engineering,
                        color: Colors.black,
                      ),
                      activeIcon: Icon(
                        Icons.engineering,
                        color: Colors.indigo,
                      ),
                      title: Text("عمال")),
                  BubbleBottomBarItem(
                      backgroundColor: Colors.green,
                      icon: Icon(
                        Icons.support_agent_outlined,
                        color: Colors.black,
                      ),
                      activeIcon: Icon(
                        Icons.support_agent_outlined,
                        color: Colors.green,
                      ),
                      title: Text("الدعم الفني"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
