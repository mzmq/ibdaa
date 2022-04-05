import 'package:flutter/material.dart';
import 'package:ibdaa/models/product_provider/cart_provider.dart';
import 'package:provider/provider.dart';

import '../screens/product_screen/cart_screen.dart';

class BtnCartWidget extends StatelessWidget {
  const BtnCartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartDate = Provider.of<CartProvider>(context);

    int cartCount = CartDate.CartCount;
    return Row(
      children: [

        Center(
          child: Text(cartCount.toString(),
              style: TextStyle(color: Colors.white)),
        ),
        IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(CartScreen.routeName) ;
            },

            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            )),
      ],
    );
  }
}
