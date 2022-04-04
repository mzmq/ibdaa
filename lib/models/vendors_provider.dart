import 'package:flutter/foundation.dart';

import '../models/vendors.dart';

class VendorProvider with ChangeNotifier {
  final List<Vendors> _item = [
    Vendors(
        id: 'v1',
        fNameVendor: 'fNameVendor 1',
        lNameVendor: 'Vendor 1 ',
        subTitle: 'subTitle 1',
        phoneNumber: 0776806491,
        address: 'Amman',
        ImgUrl:
            'https://cdn.pixabay.com/photo/2021/09/10/11/18/street-vendor-6612816_960_720.jpg'),
    Vendors(
        id: 'v2',
        fNameVendor: 'fNameVendor 1',
        lNameVendor: 'Vendor 2 ',
        subTitle: 'subTitle 2',
        phoneNumber: 0776806492,
        address: 'Amman',
        ImgUrl:
            'https://cdn.pixabay.com/photo/2015/01/09/17/34/asian-594582_960_720.jpg'),
    Vendors(
        id: 'v3',
        fNameVendor: 'fNameVendor 1',
        lNameVendor: 'Vendor 3 ',
        subTitle: 'subTitle 3',
        phoneNumber: 0776806493,
        address: 'Amman',
        ImgUrl:
            'https://cdn.pixabay.com/photo/2015/09/21/14/24/supermarket-949913_960_720.jpg'),
    Vendors(
        id: 'v4',
        fNameVendor: 'fNameVendor 1',
        lNameVendor: 'Vendor 4 ',
        subTitle: 'subTitle 4',
        phoneNumber: 0776806494,
        address: 'Amman',
        ImgUrl:
            'https://cdn.pixabay.com/photo/2015/09/21/14/23/supermarket-949912_960_720.jpg'),
    Vendors(
        id: 'v5',
        fNameVendor: 'fNameVendor 1',
        lNameVendor: 'Vendor 5 ',
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
