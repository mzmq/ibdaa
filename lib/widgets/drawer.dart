import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/add_worker.dart';
import '../screens/home.dart';
import '../screens/job.dart';
import '../screens/login.dart';
import '../main.dart';
import '../screens/favourite_vendor.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Drawer(
      child: Container(
        color: barDark,
        child: SingleChildScrollView(
          child: Container(
            color: barDark,

            child: Column(
              children: [
                SizedBox(
                  height: isLandscape ? 0 : 30,
                ),
                ListTile(
                  title: Image.asset('assets/images/logo.png' , scale: 1),
                ),
                buildListTile(context ,page:HomePage()  , leadingIcon:Icons.home ,title:'الصفحة الرئيسية' ),
                buildListTile(context ,page:FavouriteVendor()  , leadingIcon:Icons.favorite  ,title:'المتاجر المفضلة' ),
               // buildListTile(context ,page:Job() , leadingIcon:Icons.work_outline_outlined ,title:'Job' ),
                buildListTile(context ,page:AddWorker()  , leadingIcon:Icons.engineering_outlined ,title:'اضافة عامل' ),
                buildListTile(context ,page:AddWorker()  , leadingIcon:Icons.card_travel ,title:'اضافة متجر' ),
                buildListTile(context ,page:AddWorker()  , leadingIcon:Icons.contact_support_outlined ,title:'عن ابداع' ),
                buildListTile(context ,page:loginApp()  , leadingIcon:Icons.logout_outlined ,title:'تسجيل الخروج' ),



              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(BuildContext context ,{required page , required String title , required leadingIcon }) {
    return ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => page));
            },
            title: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              leadingIcon,
              color: Colors.white,
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_right_outlined,
                  color: Colors.white,
                )),
          );
  }

}
