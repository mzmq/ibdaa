import 'package:flutter/material.dart';

import 'package:ibdaa/models/product_provider/products.dart';

import 'package:provider/provider.dart';

import '../models/product_provider/product_provider_new.dart';
import '../style/colorapp.dart';
import 'add_product_cart_widget.dart';

class productItemWidget extends StatelessWidget {
  const productItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductProviderCart>(context);
    final productItem = productData.item;

    return ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: productItem.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
              value: productItem[i],
              child: ProductList(),
            ));
  }
}

class ProductList extends StatelessWidget {
  ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getProductProvider = Provider.of<Product>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Card(
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 140,
                height: 70,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      Container(
                        width: 140,
                        height: 140,
                        child: Image.network(getProductProvider.imageUrl,
                            fit: BoxFit.cover),
                      ),
                      Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: ColorStyle().color1.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(1000),
                          ),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              )))
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${getProductProvider.title}',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'وصف قصير عن الكهربائي',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 6.0, horizontal: 0),
                              child: Text(
                                '${getProductProvider.price} JD',
                                textAlign: TextAlign.start,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(width: 25),
                            AddProductCartWidget(
                              id: getProductProvider.id,
                              title: getProductProvider.title,
                              price: getProductProvider.price,
                              url: getProductProvider.imageUrl,
                              color: ColorStyle().color1,
                            ),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
