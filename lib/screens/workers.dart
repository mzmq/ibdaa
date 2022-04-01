import 'package:flutter/material.dart';
import 'package:ibdaa/screens/home.dart';
import 'package:ibdaa/style/colorapp.dart';
import 'package:ibdaa/screens/worker.dart';

import '../widgets/drawer.dart';
class Workers extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorStyle().darkGray,
        title: Text('Workers'),
      ),

      body: Column(
        children: [
          Container(

            padding: EdgeInsets.all(5),
            margin:EdgeInsets.all(5) ,
            color: Color.fromRGBO(232, 232, 232, 1),
            child: ListTile(
                
              title: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Image.asset(

                      'assets/images/cat.jpg',
                      fit: BoxFit.cover,
                      width: 70,
                      height: 70,
                    ),
                  ),
                  SizedBox(width: 20, ) ,
                  Column(
                    children: [
                      Text('Ahmad alqannas' , style: TextStyle(fontSize: 22),),
                      Text('مواسرجي' , style: TextStyle(fontSize: 17),) ,

                    ],
                  ) ,

                ],

              ),
              trailing: IconButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Worker())) ;
              }, icon: Icon(Icons.folder_open_outlined , size: 35 , color: ColorStyle().gold,)),
            ),
          ) ,


        ],

      )
    );
  }
}
