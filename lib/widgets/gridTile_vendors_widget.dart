import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/vendors.dart';
class GridTileVendors extends StatelessWidget {

  GridTileVendors({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getData = Provider.of<Vendors>(context) ;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GridTile(
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            title: Text(getData.title , style: TextStyle(color: Colors.white),),
          ),
            child: Image.network(
              getData.ImgUrl,
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
