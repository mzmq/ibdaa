import 'package:flutter/material.dart';
import 'package:ibdaa/widgets/drawer.dart';
import 'package:ibdaa/widgets/product_widgets/product_item.dart';

import 'package:provider/provider.dart';

import '../../models/product_provider/product_provider_new.dart';


class FavouriteProduct extends StatelessWidget {

  FavouriteProduct() ;

  @override
  Widget build(BuildContext context) {

    final productData = Provider.of<ProductProviderCart>(context) ;
    final productItem =  productData.getFavouriteList ;

    return Scaffold(
      drawer: DrawerApp(),
      appBar: AppBar(

        title: Text('المنتجات المفضلة'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 1 ,
          childAspectRatio: 3 / 2,
        ),
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(value: productItem[i]  , child:  Padding(
          padding: const EdgeInsets.all(3.0),
          child: ProductItem(),
        )) ,


        itemCount: productItem.length,

      ),
    )  ;
  }
}
