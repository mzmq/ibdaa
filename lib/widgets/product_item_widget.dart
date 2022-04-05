import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product_provider.dart';

class productItemWidget extends StatelessWidget {
  const productItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getProduct = Provider.of<ProductProvider>(context).product;
    return ListView.builder(
      itemCount: getProduct.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx , i) => Container(
          width: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20) ,
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GridTile(
                    header: GridTileBar(
                      backgroundColor: Colors.black54,
                      title:Text('${getProduct[i].proPrice}JD' ,style: TextStyle(fontSize: 14), ),
                      trailing: IconButton(onPressed: (){}, icon: Icon(Icons.visibility )),
                    ),
                    child: Image.network(getProduct[i].imgUrl , fit: BoxFit.cover,))),
          ),
        ));
  }
}
