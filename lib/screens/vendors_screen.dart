import 'package:flutter/material.dart';
import 'package:ibdaa/animation/slide_animartion_list.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../widgets/search_bar_widget.dart';
import '../models/vendors_provider.dart';
import '../widgets/gridTile_vendors_widget.dart';
import '../widgets/product_item_widget.dart';

class VendorsScreen extends StatelessWidget {
  const VendorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getData = Provider.of<VendorProvider>(context);
    final getList = getData.item;
    return  Scaffold(
      body: Column(
        children: [

          SearchBarWidget(hint: 'Vendor Search'),
          Expanded(
              flex: 1,
              child: productItemWidget()) ,
          Expanded(
            flex: 4,
            child: GridView.builder(
              itemCount: getList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10 ,
                  crossAxisSpacing: 10 ,
                  childAspectRatio:3/2
                ),
                itemBuilder: (ctx , i ) => ChangeNotifierProvider.value(
                    value:getList[i] ,
                    child: SlideAnimationList(i: i, getList: getList, page: GridTileVendors())
                )),
          ),
        ],
      ),
    );
  }
}

