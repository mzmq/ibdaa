import 'package:flutter/material.dart';

import '../../screens/product_screen/orders_screen.dart';
import '../../screens/product_screen/product_manage_screen.dart';
import '../../screens/product_screen/products_overview_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:  [

          ListTile(
            onTap: (){
              Navigator.of(context).pushReplacementNamed(ProductsOverviewScreen.routeName);
            },
            title: Text('Shop'),
            leading: Icon(Icons.store_outlined),
            trailing: Icon(Icons.chevron_right_outlined),
          ) ,
          const Divider() ,
          ListTile(
            onTap: (){
              Navigator.of(context).pushReplacementNamed(OrderScreen.routeName);
            },
            title: Text('Order Page'),
            leading: Icon(Icons.credit_card_outlined),
            trailing: Icon(Icons.chevron_right_outlined),
          ) ,
          const  Divider() ,
          ListTile(
            onTap: (){
              Navigator.of(context).pushReplacementNamed(ProductManage.routeName);
            },
            title: Text('Products Manage'),
            leading: Icon(Icons.create_outlined),
            trailing: Icon(Icons.chevron_right_outlined),
          ) ,
          const   Divider() ,
        ],
      ),
    );
  }
}
