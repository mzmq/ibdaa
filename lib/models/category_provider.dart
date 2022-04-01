import 'package:flutter/foundation.dart';

import '../models/category_item.dart';

class CategoryProvider with ChangeNotifier {
  final List<CategoryItem> _item = [
    CategoryItem(id: 'c1', Title: 'Title1', imgUrl: 'assets/images/alhaed.png') ,
    CategoryItem(id: 'c1', Title: 'Title1', imgUrl: 'assets/images/alhaed.png') ,
    CategoryItem(id: 'c1', Title: 'Title1', imgUrl: 'assets/images/alhaed.png') ,
    CategoryItem(id: 'c1', Title: 'Title1', imgUrl: 'assets/images/alhaed.png') ,
    CategoryItem(id: 'c1', Title: 'Title1', imgUrl: 'assets/images/alhaed.png') ,
    CategoryItem(id: 'c1', Title: 'Title1', imgUrl: 'assets/images/alhaed.png') ,
    CategoryItem(id: 'c1', Title: 'Title1', imgUrl: 'assets/images/alhaed.png') ,

  ];

  List<CategoryItem> get item {
    return [..._item];
  }
}
