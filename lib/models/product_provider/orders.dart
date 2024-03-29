import 'package:flutter/foundation.dart';

import 'cart.dart';

class OrderItem {
  String id;
  double amount;
  List<Cart> products;
  DateTime datetime;

  OrderItem({
    required this.id,
    required this.amount,
    required this.products,
    required this.datetime,
  });
}

class Orders with ChangeNotifier {
   List<OrderItem> _orders = [];

  List<OrderItem> get orders {
    return [..._orders];
  }

  void addOrder(List<Cart> products, double total) {
    _orders.insert(
      0,
      OrderItem(
        id: DateTime.now().toString(),
        amount: total,
        products: products,
        datetime: DateTime.now(),
      ),
    );

  }


  void deleteItemInCart(String id) {
    _orders.remove(id);

    notifyListeners();
  }
   void deleteOrder (){
     _orders = [] ;
     notifyListeners() ;
   }
    get checkOrder {
    if( orders == []) {
      print(orders);
      return orders ;
    }else {
      print(orders);
      return orders ;
    }

   }

  }
