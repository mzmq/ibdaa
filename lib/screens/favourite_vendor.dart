import 'package:flutter/material.dart';
import 'package:ibdaa/models/vendors_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/drawer.dart';
import '../widgets/gridTile_vendors_widget.dart';
class FavouriteVendor extends StatelessWidget {
  const FavouriteVendor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getFavList = Provider.of<VendorProvider>(context).favItem ;
    return Scaffold(
      drawer: DrawerApp(),
      appBar: AppBar(

        title: Text('Favourite Vendor'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 1 ,
          childAspectRatio: 3 / 2,
        ),
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(value: getFavList[i]  , child:  Padding(
          padding: const EdgeInsets.all(3.0),
          child: getFavList == [] ? Container() :   GridTileVendors(),
        )) ,


        itemCount: getFavList.length,

      ) ,
    );
  }
}
