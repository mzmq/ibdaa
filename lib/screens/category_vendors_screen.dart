import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibdaa/style/colorapp.dart';
import 'package:provider/provider.dart';
import 'package:flutter_map/flutter_map.dart';
import '../models/category_vendors_provider.dart';
import "package:latlong2/latlong.dart";

class CategoryVendorsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final getListCategory = Provider.of<CategoryVendorsProvider>(context);
    return Column(
      children: [
        // Expanded(
        //     flex: 5,
        //     child: FlutterMap(
        //   options: new MapOptions(
        //     center: LatLng(31.9, 36.0),
        //     zoom: 11.0,
        //   ),
        //   layers: [
        //     new TileLayerOptions(
        //         urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
        //         subdomains: ['a', 'b', 'c']
        //     ),
        //     new MarkerLayerOptions(
        //       markers: [
        //
        //       ],
        //     ),
        //   ],
        // ))  ,
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right:  17.0 ,top: 7 ),
              child: Text('الاقــســـام' ,style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
        Divider(thickness: 1 ,indent: 10 ,endIndent: 200),
        Expanded(
          flex: 5,
          child: GridView.builder(
              itemCount: getListCategory.cate.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  childAspectRatio: 3 / 2),
              itemBuilder: (ctx, i) => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 15,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(

                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      getListCategory.cate[i].imgUrl),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                            ),
                            width: 40,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                              width: 90,
                              padding: EdgeInsets.only(right: 2),
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    padding: const EdgeInsets.only(top: 10.0 ,right: 4),
                                    child: Column(
                                      children: [
                                        Flexible(
                                          child: Text(
                                            '${getListCategory.cate[i].title }',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                 SizedBox(height: 8,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color:ColorStyle().color1,
                                          borderRadius: BorderRadius.circular(1000)
                                        ),

                                        padding: const EdgeInsets.all(8.0),
                                        child: InkWell(child: Icon(Icons.favorite_border ,color: Colors.white,)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: InkWell(child: Icon(Icons.zoom_out_map_outlined ,color: ColorStyle().color1,)),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),

                      ],
                    ),
                  )),
        ),
      ],
    );
  }
}
