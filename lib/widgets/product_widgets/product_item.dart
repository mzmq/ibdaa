import 'package:flutter/material.dart';
import 'package:ibdaa/models/product_provider/cart_provider.dart';
import 'package:ibdaa/screens/product_screen/product_detail_screen.dart';

import 'package:provider/provider.dart';

import '../../models/product_provider/products.dart';
import '../add_product_cart_widget.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final getProductProvider = Provider.of<Product>(context);
    final cart = Provider.of<CartProvider>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
            arguments: getProductProvider.id);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: GridTile(
          child: Image.network(
            getProductProvider.imageUrl,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            title: Text(
              getProductProvider.title,
              textAlign: TextAlign.center,
            ),
            leading: IconButton(
                onPressed: () {
                  getProductProvider.ChangeFavourite();
                },
                icon: Icon(
                  getProductProvider.isFavourite
                      ? Icons.favorite
                      : Icons.favorite_border_rounded,
                  color: Theme.of(context).colorScheme.secondary,
                )),
            trailing: AddProductCartWidget(
                title: getProductProvider.title,
                price: getProductProvider.price,
                id: getProductProvider.id,
                url: getProductProvider.imageUrl ,
                  color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
