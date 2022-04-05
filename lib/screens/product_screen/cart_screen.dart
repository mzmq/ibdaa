import 'package:flutter/material.dart';
import 'package:ibdaa/screens/product_screen/orders_screen.dart';
import 'package:provider/provider.dart';

import '../../models/product_provider/cart_provider.dart';
import '../../models/product_provider/orders.dart';
import '../../widgets/product_widgets/cart_widget.dart';


class CartScreen extends StatelessWidget {
  static const routeName = '/cart-screen';


  @override
  Widget build(BuildContext context) {
    final CartData = Provider.of<CartProvider>(context);
    final getOrders = Provider.of<Orders>(context) ;


    return Scaffold(
      appBar: AppBar(
        title: const Text('سلة الشراء'),
      ),
      body: Column(
        children: [
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text('المجموع'),
                Spacer(),
                Chip(label: Text('${CartData.TotlePrice} د.أ ')),
                TextButton(onPressed: () {
                  if(CartData.TotlePrice > 0.0 ){
                    Navigator.of(context).pushNamed(OrderScreen.routeName) ;
                    getOrders.addOrder(CartData.items.values.toList(), CartData.TotlePrice) ;
                    CartData.clear() ;

                  } else {
                    return;
                  }


                }, child: Text(' شراء الان '))
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: CartData.CartCount,
                  itemBuilder: (ctx, i) => CardWidget(
                    title: CartData.items.values.toList()[i].title,
                    numberOrItem: CartData.items.values.toList()[i].quantity,
                    price: CartData.items.values.toList()[i].price,
                    id: CartData.items.values.toList()[i].id,
                    productId: CartData.items.keys.toList()[i],
                    imgUrl: CartData.items.values.toList()[i].imgUrl,
                      )))
        ],
      ),
    );
  }
}
