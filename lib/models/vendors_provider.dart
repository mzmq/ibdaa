import 'package:flutter/foundation.dart';

import '../models/vendors.dart';

class VendorProvider with ChangeNotifier {
  final List<Vendors> _item = [
    Vendors(
        id: 'v1',
        fNameVendor: 'العهد',
        lNameVendor: 'للاوات الصحية',
        subTitle: 'subTitle 1',
        phoneNumber: 0776806491,
        address: 'Amman',
        ImgUrl:
            'https://cdn.pixabay.com/photo/2021/09/10/11/18/street-vendor-6612816_960_720.jpg'),
    Vendors(
        id: 'v2',
        fNameVendor: 'نورا',
        lNameVendor: 'للنثريات ',
        subTitle: 'subTitle 2',
        phoneNumber: 0776806492,
        address: 'Amman',
        ImgUrl:
            'https://cdn.pixabay.com/photo/2015/01/09/17/34/asian-594582_960_720.jpg'),
    Vendors(
        id: 'v3',
        fNameVendor: 'الاخوين زيلاطيمو',
        lNameVendor: 'للاسمنت ',
        subTitle: 'subTitle 3',
        phoneNumber: 0776806493,
        address: 'Amman',
        ImgUrl:
            'https://cdn.pixabay.com/photo/2015/09/21/14/24/supermarket-949913_960_720.jpg'),
    Vendors(
        id: 'v4',
        fNameVendor: 'النجمة',
        lNameVendor: 'للدهان والديكور ',
        subTitle: 'subTitle 4',
        phoneNumber: 0776806494,
        address: 'Amman',
        ImgUrl:
            'https://cdn.pixabay.com/photo/2015/09/21/14/23/supermarket-949912_960_720.jpg'),
    Vendors(
        id: 'v5',
        fNameVendor: 'نفسية',
        lNameVendor: 'للادوات المنزلية ',
        subTitle: 'subTitle 5',
        phoneNumber: 0776806499,
        address: 'Amman',
        ImgUrl:
            'https://cdn.pixabay.com/photo/2016/01/27/22/10/shopping-1165437_960_720.jpg'),
  ];

  List<Vendors> get item {
    return [..._item];
  }

  List<Vendors> get favItem {
    return _item.where((element) => element.isFav).toList();
  }
}
