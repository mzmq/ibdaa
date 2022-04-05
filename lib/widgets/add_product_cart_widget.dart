import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product_provider/cart_provider.dart';


class AddProductCartWidget extends StatelessWidget {
  String id ;
  String title;
  double price ;
  String url ;
  Color color ;

   AddProductCartWidget({Key? key , required this.title ,required this.id , required this.price ,required this.url , required this.color }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return IconButton(
        onPressed: () {
          cart.addItem(id, title,
              price, url);
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(duration: Duration(seconds: 2),

                content: Text("لقد تم اضافته الى السلة!"),
                elevation: 10,
                action: SnackBarAction(
                  label:'تراجع',
                  onPressed: (){
                    cart.removeSingleItem(id) ;

                  },
                ),
              ));
        },
        icon: Icon(Icons.add_shopping_cart_rounded,
          color: color ,));
  }
}
