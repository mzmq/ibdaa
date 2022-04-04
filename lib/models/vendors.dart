import 'package:flutter/foundation.dart';

class  Vendors with ChangeNotifier{
  final id;

  final fNameVendor;
  final lNameVendor;

  final subTitle;

  final ImgUrl;

  final phoneNumber;
  final address ;

  bool isFav ;

  Vendors({
    @required this.id,
    @required this.fNameVendor,
    @required this.lNameVendor,
    @ required this.subTitle,
    @ required this.address,
    @required this.phoneNumber,
    @required this.ImgUrl,
    this.isFav = false ,
  });

  void ChangeFav (){
    isFav = !isFav ;
    notifyListeners();

  }
}
