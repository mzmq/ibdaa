import 'package:flutter/foundation.dart';

class Users  with ChangeNotifier{
  final id;

  final categoryID;

  final titleCategory;

  final imgUrl;

  final fName;

  final lName;

  final address;

  final description;

  Users({
    @required this.id,
    @required this.categoryID,
    @required this.titleCategory,
    @required this.fName ,
    @required this.lName ,
    @required this.address ,
    @required this.description ,
    @required this.imgUrl
  });
}
