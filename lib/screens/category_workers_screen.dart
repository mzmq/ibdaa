import 'package:flutter/material.dart';
import 'package:ibdaa/animation/slide_animartion_list.dart';
import 'package:provider/provider.dart';

import '../models/users_provider.dart';
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
    final getUsers = Provider.of<UserProvider>(context) ;

    final getListCategory = getCategoryData.item;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize:MainAxisSize.max,
            children: [
       //     SearchBarWidget(hint: 'ابحث عن قسم..   مثال: مواد بناء'),

          Container(
            height: 230,
            width: double.infinity,
            child: productItemWidget(),
          ),

             Container(


          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: getListCategory.length,
            itemBuilder: (ctx, i) =>
                Column(
                  children: [
                    SlideAnimationList(i: i, getList: getListCategory, page: InkWell(
                      onTap: (){

                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => Workers(id: getListCategory[i].id,)));
                      },
                      child: Column(
                        children: [
                          InkWellWidget(

                              URL: getListCategory[i].imgUrl,
                              Title: getListCategory[i].Title,
                              NextPage: Workers(id: getListCategory[i].id,


                              )),
                          Divider()
                        ],
                      ),
                    )),
                  ],
                ),
          ),
        ),

    ]
    ,
    ),
      )
    ,
    );
  }
}
