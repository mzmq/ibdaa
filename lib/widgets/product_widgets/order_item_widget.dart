import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibdaa/screens/add_worker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';


import '../../models/product_provider/orders.dart';



class ItemOrderWidget extends StatefulWidget {

   OrderItem order;
   final String orderId ;

   ItemOrderWidget({Key? key, required this.order , required this.orderId}) : super(key: key);

  @override
  State<ItemOrderWidget> createState() => _ItemOrderWidgetState();
}

class _ItemOrderWidgetState extends State<ItemOrderWidget> {
  bool _expand = false;

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            elevation: 5,
            child: Column(
              children: [


                ListTile(
                  title: Text('${widget.order.amount} د.أ '),
                  subtitle: Row(
                    children: [
                      Text(DateFormat('dd/MM/yyyy ').format(widget.order.datetime)),
                      Text(
                        DateFormat().add_jm().format(widget.order.datetime),
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          _expand = !_expand;
                        });
                      },
                      icon: Icon(_expand ? Icons.expand_less : Icons.expand_more)),
                ),
                _expand
                    ? Column(
                      children: [
                        Column(
                            children: widget.order.products
                                .map((e) => ListTile(
                                      title: Text('${e.title}'),
                                      leading: CircleAvatar(
                                        backgroundImage: NetworkImage(e.imgUrl),
                                      ),
                                      subtitle: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Text(DateFormat('dd/MM/yyyy ')
                                                  .format(widget.order.datetime)),
                                              Text(
                                                DateFormat()
                                                    .add_jm()
                                                    .format(widget.order.datetime),
                                                style: TextStyle(color: Colors.blue),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Text('${e.quantity}'),
                                              Text(' X '),
                                              Text('${e.price} د.أ'),

                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [


                                              ],
                                            ),
                                          ) ,

                                        ],

                                      ),
                                      trailing: Text('${e.price * e.quantity} د.أ '),
                                    ))
                                .toList() ,
                          ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton.icon(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.green) ,
                              ),
                              onPressed: () {
                                setState(() {

                                });
                              },
                              icon: Icon(
                              FontAwesomeIcons.whatsapp ,
                                color: Colors.white,
                              ),
                              label:Text( 'ارسال الطلب الان')),
                        )
                      ],
                    )
                    : Container(),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
