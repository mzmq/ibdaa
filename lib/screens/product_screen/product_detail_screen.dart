import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/product_provider/product_provider_new.dart';


class ProductDetailScreen extends StatelessWidget {

// final String title ;
//  ProductDetailScreen(this.title);

 static const routeName = '/product_screen-detail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String ; // this is id
    final idUsedProvider = Provider.of<ProductProviderCart>(context).item.firstWhere((element) => element.id == productId) ;
    return Scaffold(

      appBar: AppBar(
        title: Text(idUsedProvider.title),

      ),

      body: Column(
        children: [
          Image.network(idUsedProvider.imageUrl) ,
          ListTile(
           title: Text(idUsedProvider.title),
           subtitle: Text('${idUsedProvider.price} JOD'),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart_rounded)),
          )

        ],
      )
    );
  }
}
