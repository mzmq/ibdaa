import 'package:flutter/foundation.dart';

import '../models/category_item.dart';

class CategoryProvider with ChangeNotifier {
  final List<CategoryItem> _item = [
    CategoryItem(id: 'c1', Title: 'المواسير والتمديد الصحي', imgUrl: 'assets/images/alhaed.png') ,
    CategoryItem(id: 'c2', Title: 'الكهربائي', imgUrl: 'assets/images/alhaed.png') ,
    CategoryItem(id: 'c3', Title: 'دهان', imgUrl: 'assets/images/alhaed.png') ,
    CategoryItem(id: 'c3', Title: 'بليط', imgUrl: 'assets/images/alhaed.png') ,
    CategoryItem(id: 'c4', Title: 'بناء وقصارة', imgUrl: 'assets/images/alhaed.png') ,
    CategoryItem(id: 'c5', Title: 'نجارة', imgUrl: 'assets/images/alhaed.png') ,
    CategoryItem(id: 'c6', Title: 'حدادة', imgUrl: 'assets/images/alhaed.png') ,

  ];

  List<CategoryItem> get item {
    return [..._item];
  }
}
