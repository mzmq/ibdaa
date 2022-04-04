import 'package:flutter/foundation.dart';

import '../models/category_item.dart';

class CategoryProvider with ChangeNotifier {
  final List<CategoryItem> _item = [
    CategoryItem(id: 'c1', Title: 'developer', imgUrl: 'assets/images/alhaed.png') ,
    CategoryItem(id: 'c2', Title: 'programmer', imgUrl: 'assets/images/cardimage.jpg') ,
    CategoryItem(id: 'c3', Title: 'Title1', imgUrl: 'assets/images/alhaed.png') ,
    CategoryItem(id: 'c3', Title: 'Title1', imgUrl: 'assets/images/alhaed.png') ,
    CategoryItem(id: 'c4', Title: 'Title1', imgUrl: 'assets/images/alhaed.png') ,
    CategoryItem(id: 'c5', Title: 'Title1', imgUrl: 'assets/images/alhaed.png') ,
    CategoryItem(id: 'c6', Title: 'Title1', imgUrl: 'assets/images/alhaed.png') ,

  ];

  List<CategoryItem> get item {
    return [..._item];
  }
}
