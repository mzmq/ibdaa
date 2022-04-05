import 'package:flutter/foundation.dart';

class MyWorker {
  final id ;
  final name ;
  final job ;
  final imgUrl ;
  final phone ;
  final description;
  bool isfav ;
  MyWorker({
    @required this.id,
    @required   this.name,
    @required  this.description,
    @required   this.phone,
    @required  this.job,
    @required  this.imgUrl,
      this.isfav = false ,

});
}
