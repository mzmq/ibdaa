import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/vendors.dart';
import '../screens/vendor_details_screen.dart';
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
            leading: IconButton(onPressed: (){
              getData.ChangeFav() ;

            }, icon: Icon(
              getData.isFav
                  ? Icons.favorite
                  : Icons.favorite_border_rounded,
            )),
            trailing: IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>VendorDetailsScreen(idVendor: getData.id , titleCate: '${getData.fNameVendor} ${getData.lNameVendor}',) ));
            }, icon: Icon(Icons.visibility)),
            backgroundColor: Colors.black87,
            title: Text('${getData.fNameVendor} ${getData.lNameVendor}' , textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
          ),
            child: Image.network(
              getData.ImgUrl,
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
