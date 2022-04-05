import 'package:flutter/material.dart';
import 'package:ibdaa/widgets/product_widgets/product_item.dart';

import 'package:provider/provider.dart';

import '../../models/product_provider/product_provider.dart';


class ProductGrid extends StatelessWidget {

  bool isFav;
  ProductGrid({required this.isFav}) ;

  @override
  Widget build(BuildContext context) {

    final productData = Provider.of<ProductProviderCart>(context) ;
    final productItem = isFav ? productData.getFavouriteList :productData.item ;

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2 ,
        childAspectRatio: 3 / 2,
      ),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(value: productItem[i]  , child:  Padding(
        padding: const EdgeInsets.all(3.0),
        child: ProductItem(),
      )) ,


      itemCount: productItem.length,

    )  ;
  }
}
