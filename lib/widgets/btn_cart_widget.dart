import 'package:flutter/material.dart';
import 'package:ibdaa/models/product_provider/cart_provider.dart';
import 'package:badges/badges.dart';

import 'package:ibdaa/screens/add_worker.dart';
import 'package:ibdaa/style/colorapp.dart';
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


        Badge(
          elevation: 2,
          alignment:Alignment.topRight ,
          position: BadgePosition(
            top: -2,
            start: -3

          ),
          badgeContent: Text(cartCount.toString() , style: TextStyle(color: Colors.white)),
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName) ;
              },

              icon: Icon(
                Icons.shopping_cart_outlined,
                color: ColorStyle().color1,
              )),
        ),
      ],
    );
  }
}
