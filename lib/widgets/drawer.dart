import 'package:flutter/material.dart';

import 'package:ibdaa/screens/product_screen/orders_screen.dart';
import 'package:ibdaa/style/colorapp.dart';

import '../screens/favourite_products.dart';
import '../screens/product_screen/product_manage_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/add_worker.dart';
import '../screens/home.dart';
import '../screens/job.dart';
import '../screens/login.dart';
import '../main.dart';
import '../screens/favourite_vendor.dart';
import '../screens/product_screen/products_overview_screen.dart';
import '../screens/setting_screen.dart';

class DrawerApp extends StatelessWidget {
   DrawerApp({Key? key}) : super(key: key);
 static String profileUrl = 'https://mohammadalqannas.com/images/269861137_5042857319092733_4153595512844205636_n.jpg' ;

  @override
  Widget build(BuildContext context) {
    final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return ClipRRect(
      borderRadius: BorderRadius.only(
      //  bottomRight: Radius.circular(30) ,
        bottomLeft: Radius.circular(0),
            topLeft: Radius.circular(0)
    ),
      child: Drawer(
        elevation: 10,

        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Container(
              color:  Colors.white,

              child: Column(
                children: [
                  SizedBox(
                    height: isLandscape ? 0 : 20,
                  ),
                  SizedBox(height: 45,) ,
                  ListTile(
                    title: Image.asset('assets/images/logo_black.png' , scale: 1),
                  ),
                  SizedBox(height: 45,) ,
                  ListTile(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> ProfileScreen()));
                    },
                    leading: ClipRRect(
                        borderRadius: BorderRadius.circular(50000),
                        child: Image.network(profileUrl)),
                    title: Text('محمد القناص' , style: TextStyle(color: ColorStyle().color1  , fontSize: 20)),
                    trailing: IconButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=> ProfileScreen()));
                    }, icon: Icon(Icons.navigate_next_rounded , color: ColorStyle().color1 ,size: 25,)),
                  ),
                  SizedBox(height: 20,) ,
                  Divider(color: gold ,  thickness: 2 ,endIndent: 20 , indent: 20),
                  buildListTile(context ,page:HomePage()  , leadingIcon:Icons.home ,title:'الصفحة الرئيسية' ),
                  buildListTile(context ,page:FavouriteVendor()  , leadingIcon:Icons.favorite  ,title:'المتاجر المفضلة' ),
                  buildListTile(context ,page:FavouriteProduct()  , leadingIcon:Icons.star_rounded  ,title:'المنتجات المفضلة' ),
                 // buildListTile(context ,page:Job() , leadingIcon:Icons.work_outline_outlined ,title:'Job' ),
                  buildListTile(context ,page:AddWorker()  , leadingIcon:Icons.engineering_outlined ,title:'اضافة عامل' ),
                  buildListTile(context ,page:AddWorker()  , leadingIcon:Icons.card_travel ,title:'اضافة متجر' ),
                  buildListTile(context ,page:ProductManage()  , leadingIcon:Icons.shopping_basket_rounded ,title:'اضافة منتج' ),
                  buildListTile(context ,page:OrderScreen()  , leadingIcon:Icons.credit_card_rounded ,title:'مراجعة الطلب' ),
                  buildListTile(context ,page:AddWorker()  , leadingIcon:Icons.contact_support_outlined ,title:'عن ابداع' ),
                  buildListTile(context ,page:SettingScreen()  , leadingIcon:Icons.settings_rounded ,title:'الاعدادات' ),
                  buildListTile(context ,page:loginApp()  , leadingIcon:Icons.logout_outlined ,title:'تسجيل الخروج' ),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(BuildContext context ,{required page , required String title , required leadingIcon }) {
    return ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => page));
            },
            title: Text(
              title,
              style: TextStyle(color: ColorStyle().color1),
            ),
            leading: Icon(
              leadingIcon,
              color: ColorStyle().color1,
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_right_outlined,
                  color: ColorStyle().color1,
                )),
          );
  }

}
