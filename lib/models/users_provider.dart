import 'package:flutter/foundation.dart';

import './users.dart';

class UserProvider with ChangeNotifier {
  final List<Users> _users = [
    Users(
        id: 'u1',
        categoryID: 'c1',
        titleCategory: 'مواسرجي',
        fName: 'سفيان',
        lName: 'القناص',
        address: 'عمان جبل الحسين شارع يافا بناية 92',
        description: 'انا عندي خبرة 10 سنين وبعرف اشتغل بالبويلارات والتمديدات الصحية والتأسيس ',
        imgUrl: 'assets/images/cat.jpg') ,

    Users(
        id: 'u2',
        categoryID: 'c2',
        titleCategory: 'كهربائي',
        fName: 'محمد',
        lName: 'الشعار',
        address: 'عمان طبربور دوار المشاغل',
        description: 'انا بعرف ابلط بلاط صيني وعادي واوروبي وبعرف كمان اقص على الصاروخ',
        imgUrl: 'assets/images/cat.jpg') ,
    Users(
        id: 'u3',
        categoryID: 'c2',
        titleCategory: 'كهربائي',
        fName: 'اسامة',
        lName: 'العكور',
        address: 'عجلون عين جنا',
        description: 'انا بعرف اشتغل كهرباء نص نص يعني بتعلم قاعد واحيانا باكل اكم فاز',
        imgUrl: 'assets/images/cat.jpg') ,

    Users(
        id: 'u4',
        categoryID: 'c4',
        titleCategory: 'نجار',
        fName: 'رامي',
        lName: 'الدروبي',
        address: 'البقعة اول المخيم ',
        description: 'ما عندي اي خبرة بأي اشي مع هيك انا شغيل جدا',
        imgUrl: 'assets/images/Electrician.jpg') ,
  ];

  List<Users> get users {
    return [..._users];
  }



 List<Users> allWarker( id){
    return _users.where((element) => element.id  == id).toList() ;
 }
}
