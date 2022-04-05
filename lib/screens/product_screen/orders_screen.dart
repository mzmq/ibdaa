import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/product_provider/orders.dart';
import '../../widgets/drawer.dart';
import '../../widgets/product_widgets/drawer_widget.dart';
import '../../widgets/product_widgets/order_item_widget.dart';
import '../home.dart';



class OrderScreen extends StatefulWidget {
  static const routeName = '/Order-Screen';

  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    final getOrder = Provider.of<Orders>(context);

    return Scaffold(


      floatingActionButton: FloatingActionButton(
        onPressed: (){

setState(() {

  getOrder.checkOrder.length == 0 ?  showDialog(context: context, builder: (context)=> AlertDialog(
    title: Text('لا يوجد منتجات'),
    content:Text('الرجاء اضافة منتجات'),
    actions: [
      TextButton(onPressed: (){
        Navigator.of(context).pop(false);
      }, child: Text('الغاء')),
      TextButton(onPressed: (){
        getOrder.deleteOrder() ;
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomePage() )) ;
      }, child: Text('الذهاب الى المنتجات')),
    ],
  )):
  showDialog(context: context, builder: (context)=> AlertDialog(
    title: Text('هل انت متاكد؟'),
    content:Text('سوف يتم حذف جميع المنتجات ويتم الغاء الطلب بشكل كامل'),
    actions: [
      TextButton(onPressed: (){
        Navigator.of(context).pop(false);
      }, child: Text('الغاء')),
      TextButton(onPressed: (){
        getOrder.deleteOrder() ;
        Navigator.of(context).pop(true) ;
      }, child: Text('حذف')),
    ],
  ));

});

        },
        child: Icon(Icons.delete),
        backgroundColor: Colors.red,
        elevation: 10,


      ),
      appBar: AppBar(
        title: const Text('مراجعة الطلب'),
      ),
      body: ListView.builder(

          itemCount: getOrder.orders.length,
          itemBuilder: (ctx, i) =>ItemOrderWidget(order: getOrder.orders[i] , orderId : getOrder.orders[i].id)),
    );
  }
}
