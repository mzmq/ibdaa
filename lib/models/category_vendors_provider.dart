import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/category_vendors.dart';
class CategoryVendorsProvider with ChangeNotifier {

final  List<CategoryVendors> _cate = [
    CategoryVendors(id: 'cv1', title: 'محلات كهرباء - كهربائي', imgUrl: 'https://cdn.pixabay.com/photo/2019/05/12/15/07/electric-4198293_960_720.jpg',) ,
    CategoryVendors(id: 'cv2', title: 'محلات تنجيد', imgUrl: 'https://cdn.pixabay.com/photo/2020/02/01/06/12/living-room-4809587_960_720.jpg', ),
    CategoryVendors(id: 'cv3', title: 'عمالة منزلية', imgUrl: 'https://cdn.pixabay.com/photo/2014/12/17/16/54/clean-571679_960_720.jpg',),
    CategoryVendors(id: 'cv4', title: 'نجار', imgUrl: 'https://cdn.pixabay.com/photo/2020/01/30/10/38/man-4805038_960_720.jpg', ),
    CategoryVendors(id: 'cv5', title: 'محلات تبريد وتكيف', imgUrl: 'https://cdn.pixabay.com/photo/2016/02/07/16/03/air-conditioner-1185041_960_720.jpg', ),
    CategoryVendors(id: 'cv6', title: 'محلات صيانة عامة', imgUrl: 'https://cdn.pixabay.com/photo/2019/03/29/04/35/tools-4088531_960_720.jpg', ),
  CategoryVendors(id: 'cv7', title: 'محلات سباكة(المواسير))', imgUrl: 'https://cdn.pixabay.com/photo/2015/07/11/14/53/plumbing-840835_960_720.jpg',) ,
  CategoryVendors(id: 'cv8', title: 'محلات الامنيوم', imgUrl: 'https://cdn.pixabay.com/photo/2010/12/13/10/05/berries-2277_960_720.jpg', ),
  CategoryVendors(id: 'cv9', title: 'محلات بلاط ورخام', imgUrl: 'https://cdn.pixabay.com/photo/2015/05/04/10/16/vegetables-752153_960_720.jpg',),
  CategoryVendors(id: 'cv10', title: 'محلات تشيد وبناء', imgUrl: 'https://cdn.pixabay.com/photo/2015/10/02/15/59/olive-oil-968657_960_720.jpg', ),
  CategoryVendors(id: 'cv11', title: 'محلات ستلايات وبرمجة', imgUrl: 'https://cdn.pixabay.com/photo/2016/08/15/20/29/olive-oil-1596417_960_720.jpg', ),
  CategoryVendors(id: 'cv12', title: 'محلات تركيب مصاعد', imgUrl: 'https://cdn.pixabay.com/photo/2016/05/24/13/29/olive-oil-1412361_960_720.jpg', ),
  ] ;
  List<CategoryVendors> get cate {
    return [..._cate];
  }

}