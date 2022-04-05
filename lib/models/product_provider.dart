import 'package:flutter/foundation.dart';
import 'package:ibdaa/models/product_item.dart';

class ProductProvider with ChangeNotifier {
  final List<ProductItem> _product = [
    ProductItem(
      id: 'p1',
      proDescription: 'proDescription 1',
      proName: 'proName 1',
      proPrice: 20.50,
      imgUrl:
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      vendorId: 'v1',
    ),
    ProductItem(
      id: 'p2',
      proDescription: 'proDescription 2',
      proName: 'proName 2',
      proPrice: 15.50,
      imgUrl:
          'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      vendorId: 'v1',
    ),
    ProductItem(
      id: 'p3',
      proDescription: 'proDescription 3',
      proName: 'proName 3',
      proPrice: 10,
      imgUrl:
          'https://images.unsplash.com/photo-1627384113743-6bd5a479fffd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      vendorId: 'v2',
    ),
    ProductItem(
      id: 'p4',
      proDescription: 'proDescription 4',
      proName: 'proName 4',
      proPrice: 100,
      imgUrl:
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1099&q=80',
      vendorId: 'v2',
    ),
    ProductItem(
      id: 'p5',
      proDescription: 'proDescription 5',
      proName: 'proName 5',
      proPrice: 20.50,
      imgUrl:
          'https://images.unsplash.com/photo-1591375372156-542495912da9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      vendorId: 'v2',
    ),
  ];

  List<ProductItem> get product {
    return [..._product];
  }
  

}
