import 'package:flutter/material.dart';
import 'package:ibdaa/animation/slide_animartion_list.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../widgets/search_bar_widget.dart';
import '../models/vendors_provider.dart';
import '../widgets/gridTile_vendors_widget.dart';
import '../widgets/product_item_widget.dart';

class VendorsScreen extends StatelessWidget {
   VendorsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    final getData = Provider.of<VendorProvider>(context);
    final getList = getData.item;
    return  Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          children: <Widget>[

             Column(
               mainAxisSize: MainAxisSize.max,
               children: [
                 Container(
                   width: double.infinity,
                  height: 230,
                  child:   productItemWidget(),
            ),
                 GridView.builder(
                     shrinkWrap: true,
                     physics: NeverScrollableScrollPhysics(),
                     itemCount: getList.length,
                     gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: isLandscape ? 4 :  1,
                         mainAxisSpacing: 2 ,
                         crossAxisSpacing: 2 ,
                         childAspectRatio:3/2
                     ),
                     itemBuilder: (ctx , i ) => ChangeNotifierProvider.value(
                         value:getList[i] ,
                         child: SlideAnimationList(i: i, getList: getList, page: GridTileVendors())
                     )),

               ],
             ),
          ],
        ),
      ),
    );


  }
}

