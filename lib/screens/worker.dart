import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ibdaa/style/colorapp.dart';
import '../models/users_provider.dart';
import '../models/users.dart';

class Worker extends StatelessWidget {
  String idWorker ;
  String titleCate ;
  Worker({required this.idWorker ,required this.titleCate}) ;
  @override
  Widget build(BuildContext context) {
    final getUserDetails = Provider.of<UserProvider>(context).users;
    final getUserId = getUserDetails.where((element) => element.id == idWorker).toList() ;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorStyle().darkGray,
          title: Text(titleCate)
        ),
        body: ListView.builder(
          itemCount:getUserId.length ,
          itemBuilder: (ctx , i )=>Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                child: Image.asset(
                  getUserId[i].imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person_rounded,
                  color: Colors.blue,
                ),
                title: Text(
                  '${getUserId[i].fName } ${getUserId[i].lName }',
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
                      getUserId[i].address,
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
                      getUserId[i].titleCategory,
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
                            hintText:getUserId[i].description.toString()),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

        ));
  }
}
