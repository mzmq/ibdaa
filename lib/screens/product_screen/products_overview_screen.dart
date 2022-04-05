import 'package:flutter/material.dart';
import 'package:ibdaa/models/product_provider/cart_provider.dart';
import 'package:ibdaa/screens/product_screen/cart_screen.dart';
import 'package:ibdaa/style/colorapp.dart';
import 'package:ibdaa/widgets/product_widgets/drawer_widget.dart';
import 'package:provider/provider.dart';

import '../../models/product_provider/product_provider_new.dart';
import '../../widgets/drawer.dart';
import '../../widgets/product_widgets/product_grid.dart';

enum FilterOption { Favorites, All }

class ProductsOverviewScreen extends StatefulWidget {
  static const routeName = '/ProductsOverViewScreen';
  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  bool _Fav = false;

  @override
  Widget build(BuildContext context) {
    final productsGetProvider =
        Provider.of<ProductProviderCart>(context, listen: false);
    final CartDate = Provider.of<CartProvider>(context);

    int cartCount = CartDate.CartCount;
    return Scaffold(
      drawer: DrawerApp(),
      appBar: AppBar(

        title: Text('Shop'),
        backgroundColor: ColorStyle().barDarkApp,
        actions: [
          Consumer<CartProvider>(
            builder: (ctx, cartData, child) => Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(CartScreen.routeName) ;
                    },
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    )),
                Text(cartCount.toString(),
                    style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 10,
                )
              ],
            ),
          ),
          PopupMenuButton(
              icon: const Icon(Icons.favorite),
              onSelected: (FilterOption selected) {
                setState(() {
                  if (selected == FilterOption.Favorites) {
                    _Fav = true;
                  } else {
                    _Fav = false;
                  }
                });
              },
              itemBuilder: (_) => [
                    const PopupMenuItem(
                        child: Text('Favorites'),
                        value: FilterOption.Favorites),
                    const PopupMenuItem(
                        child: Text('All'), value: FilterOption.All),
                  ]),

        ],
      ),
      body: ProductGrid(isFav: _Fav),
    );
  }
}
