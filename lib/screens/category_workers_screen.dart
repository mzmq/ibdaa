import 'package:flutter/material.dart';
import 'package:ibdaa/animation/slide_animartion_list.dart';
import 'package:provider/provider.dart';

import '../widgets/product_item_widget.dart';
import '../widgets/search_bar_widget.dart';
import '../screens/workers_details_screen.dart';
import '../widgets/ink_well_widget.dart';
import '../models/category_provider.dart';

class CategoryWorkersScreen extends StatelessWidget {
  const CategoryWorkersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getCategoryData = Provider.of<CategoryProvider>(context);
    final getListCategory = getCategoryData.item;
    return Scaffold(
      body: Column(
          children: [
          SearchBarWidget(hint: 'ابحث عن قسم..   مثال: مواد بناء'),
           Expanded(
              flex: 1,
              child: productItemWidget()) ,
           Expanded(
        flex: 4,
        child: ListView.builder(
          itemCount: getListCategory.length,
          itemBuilder: (ctx, i) =>
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SlideAnimationList(i: i, getList: getListCategory, page: InkWell(
                      onTap: (){

                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => Workers(id: getListCategory[i].id,)));
                      },
                      child: InkWellWidget(
                          URL: getListCategory[i].imgUrl,
                          Title: getListCategory[i].Title,
                          NextPage: Workers(id: getListCategory[i].id,)),
                    )),
                  ],
                ),
              ),
        ),
      ),
    ]
    ,
    )
    ,
    );
  }
}
