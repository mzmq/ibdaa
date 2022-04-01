import 'package:flutter/material.dart';
import 'package:ibdaa/models/vendors_provider.dart';
import 'package:ibdaa/widgets/gridTile_vendors_widget.dart';
import 'package:provider/provider.dart';

class VendorsScreen extends StatelessWidget {
  const VendorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getData = Provider.of<VendorProvider>(context);
    final getList = getData.item;
    return  Scaffold(
      body: GridView.builder(
        itemCount: getList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 10 ,
            crossAxisSpacing: 10 ,
            childAspectRatio:3/2
          ),
          itemBuilder: (ctx , i ) => GridTileVendors(title: getList[i].title, ImgUrl: getList[i].ImgUrl)),
    );
  }
}
