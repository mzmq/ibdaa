import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/add_worker.dart';
import '../screens/home.dart';
import '../screens/job.dart';
import '../screens/login.dart';
import '../main.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: barDark,
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            ListTile(
              title: Image.asset('assets/images/logo.png' , scale: 1),
            ),
            buildListTile(context ,page:HomePage()  , leadingIcon:Icons.home ,title:'Home' ),
            buildListTile(context ,page:Job() , leadingIcon:Icons.work_outline_outlined ,title:'Job' ),
            buildListTile(context ,page:AddWorker()  , leadingIcon:Icons.person_add_rounded ,title:'Add Worker' ),
            buildListTile(context ,page:loginApp()  , leadingIcon:Icons.logout_outlined ,title:'Logout' ),



          ],
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
