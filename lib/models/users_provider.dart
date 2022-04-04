import 'package:flutter/foundation.dart';

import './users.dart';

class UserProvider with ChangeNotifier {
  final List<Users> _users = [
    Users(
        id: 'u1',
        categoryID: 'c1',
        titleCategory: 'developer',
        fName: 'mohammad',
        lName: 'alqannas',
        address: 'Jordan  ',
        description: 'description',
        imgUrl: 'assets/images/cat.jpg') ,

    Users(
        id: 'u2',
        categoryID: 'c2',
        titleCategory: 'programmer',
        fName: 'tareq',
        lName: 'alqannas',
        address: 'amman  ',
        description: 'description 2 ',
        imgUrl: 'assets/images/cat.jpg') ,
    Users(
        id: 'u3',
        categoryID: 'c2',
        titleCategory: 'programmer',
        fName: 'noor',
        lName: 'alqannas',
        address: 'Jordan jabal alhousan ',
        description: 'description 3',
        imgUrl: 'assets/images/cat.jpg') ,

    Users(
        id: 'u4',
        categoryID: 'c4',
        titleCategory: 'programmer',
        fName: 'Sofyan',
        lName: 'Alshaar',
        address: 'amman jordan tabarbor ',
        description: 'description sofyan',
        imgUrl: 'assets/images/Electrician.jpg') ,
  ];

  List<Users> get users {
    return [..._users];
  }

}
