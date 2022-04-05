import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ibdaa/screens/home.dart';
import 'package:ibdaa/style/colorapp.dart';
import 'package:ibdaa/screens/worker.dart';

import '../widgets/drawer.dart';
import '../widgets/product_item_widget.dart';
import '../widgets/search_bar_widget.dart';
import '../models/users_provider.dart';
class Workers extends StatelessWidget {
String id ;
Workers({required this.id }) ;

  @override
  Widget build(BuildContext context) {

    final getUsers = Provider.of<UserProvider>(context).users ;
    final getCategoryId = getUsers.where((element) => element.categoryID == id ).toList() ;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorStyle().darkGray,
        title: Text('Workers'),
      ),

      body: Column(
        children: [
          SearchBarWidget(hint: 'ابحث عن عامل') ,
           
          Expanded(
            child: ListView.builder(
              itemCount: getCategoryId.length,
              itemBuilder: (ctx , i )=>Container(

                padding: EdgeInsets.all(5),
                margin:EdgeInsets.all(5) ,
                color: Color.fromRGBO(232, 232, 232, 1),
                child: ListTile(

                  title: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(1000),
                        child: Image.asset(

                          getCategoryId[i].imgUrl,
                          fit: BoxFit.cover,
                          width: 70,
                          height: 70,
                        ),
                      ),
                      SizedBox(width: 20, ) ,
                      Column(
                        children: [
                          Text('${getCategoryId[i].fName} ${getCategoryId[i].lName}' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),),
                          Text('${getCategoryId[i].titleCategory}' , style: TextStyle(fontSize: 17),) ,

                        ],
                      ) ,

                    ],

                  ),
                  trailing: IconButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Worker( idWorker:getCategoryId[i].id ,titleCate:getCategoryId[i].titleCategory))) ;
                  }, icon: Icon(Icons.folder_open_outlined , size: 35 , color: ColorStyle().gold,)),
                ),
              ) ,

            ),
          ) ,


        ],

      )
    );
  }
}
