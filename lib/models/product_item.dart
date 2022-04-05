import 'package:flutter/material.dart';

class ProductItem with ChangeNotifier {
  final id;

  final proName;

  final proPrice;

  final vendorId;

  final proDescription;

  final imgUrl;

  bool isLike;

  ProductItem(
      {@required this.id,
      @required this.proDescription,
      @required this.proName,
      @required this.proPrice,
      @required this.imgUrl,
      @required this.vendorId,
      this.isLike = false});

  void ChangeLike (){
    isLike = ! isLike ;
    notifyListeners() ;

  }
}
