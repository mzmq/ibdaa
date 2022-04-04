import 'package:flutter/material.dart';
import 'package:ibdaa/animation/slide_animartion_list.dart';
import 'package:provider/provider.dart';

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
          SearchBarWidget(hint: 'Category Search'),
      Expanded(
        child: ListView.builder(
          itemCount: getListCategory.length,
          itemBuilder: (ctx, i) =>
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SlideAnimationList(i: i, getList: getListCategory, page: InkWellWidget(
                        URL: getListCategory[i].imgUrl,
                        Title: getListCategory[i].Title,
                        NextPage: Workers(id: getListCategory[i].id,))),
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
