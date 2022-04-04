import 'package:flutter/material.dart';
import 'package:ibdaa/models/vendors_provider.dart';
import 'package:provider/provider.dart';

import 'package:ibdaa/style/colorapp.dart';
import '../models/users_provider.dart';
import '../models/users.dart';

class VendorDetailsScreen extends StatelessWidget {
  String idVendor ;
  String titleCate ;
  VendorDetailsScreen({required this.idVendor ,required this.titleCate}) ;
  @override
  Widget build(BuildContext context) {
    final getUserDetails = Provider.of<VendorProvider>(context).item;
    final getVendorId = getUserDetails.where((element) => element.id == idVendor).toList() ;

    return Scaffold(
        appBar: AppBar(
            backgroundColor: ColorStyle().darkGray,
            title: Text(titleCate)
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemCount:getVendorId.length ,
                itemBuilder: (ctx , i )=>Column(
                  children: [
                    SizedBox(height: 10,) ,
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(getVendorId[i].ImgUrl ,),
                      ),
                      title: Text(
                        '${getVendorId[i].fNameVendor } ${getVendorId[i].lNameVendor }',
                        style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.phone,
                            color: Colors.green,
                          )),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.place_rounded,
                        color: Colors.red,
                      ),
                      title: Row(
                        children: [
                          Text(
                            getVendorId[i].address,
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.work_rounded,
                        color: Colors.brown,
                      ),
                      title: Row(
                        children: [
                          Text(
                            titleCate,
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.description_rounded,
                        color: Colors.green,
                      ),
                      title: Row(
                        children:  [
                          Expanded(
                            child: TextField(
                              maxLines: 8,
                              decoration: InputDecoration.collapsed(
                                  fillColor: Colors.black,
                                  hintTextDirection: TextDirection.ltr,
                                  hintText:getVendorId[i].subTitle.toString()),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              ),
            ),
            Expanded(
                flex: 3,
                child: GridView.builder(
                itemCount: getUserDetails.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

              crossAxisCount: 1 ,
              childAspectRatio: 3/2 ,
              mainAxisSpacing: 3 ,
              crossAxisSpacing: 3
            ), itemBuilder: (ctx , i )=> Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(getUserDetails[i].ImgUrl , fit: BoxFit.cover,)),
            )))
          ],
        ));
  }
}
