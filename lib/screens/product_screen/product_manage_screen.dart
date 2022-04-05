import 'package:flutter/material.dart';
import 'package:ibdaa/screens/product_screen/edit_product_screen.dart';
import 'package:ibdaa/widgets/product_widgets/manage_product_widget.dart';
import 'package:provider/provider.dart';

import '../../models/product_provider/product_provider_new.dart';
import '../../widgets/drawer.dart';
import '../../widgets/product_widgets/drawer_widget.dart';



class ProductManage extends StatelessWidget {
  static const routeName = '/ProductManage';

  const ProductManage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getProducts = Provider.of<ProductProviderCart>(context).item;
    return Scaffold(
      drawer: DrawerApp(),
      appBar: AppBar(
        title: Text('Product Manage'),
        actions: [

          IconButton(onPressed: (){
            Navigator.of(context).pushNamed(EditProductScreen.routeName) ;
          }, icon: Icon(Icons.add)),
          SizedBox(width: 7,) ,
        ],
      ),
      body: ListView.builder(
        itemCount: getProducts.length,
          itemBuilder: (ctx, i) => ManageProductWidget(
                title: getProducts[i].title,
                imgUrl: getProducts[i].imageUrl,
              )),
    );
  }
}
