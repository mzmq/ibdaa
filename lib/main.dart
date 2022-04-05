import 'package:flutter/material.dart';
import 'package:ibdaa/models/product_provider/cart_provider.dart';
import 'package:ibdaa/models/product_provider/orders.dart';
import 'package:ibdaa/models/product_provider/product_provider_new.dart';
import 'package:ibdaa/models/product_provider/products.dart';
import 'package:ibdaa/screens/product_screen/cart_screen.dart';
import 'package:ibdaa/screens/product_screen/edit_product_screen.dart';
import 'package:ibdaa/screens/product_screen/orders_screen.dart';
import 'package:ibdaa/screens/product_screen/product_detail_screen.dart';
import 'package:ibdaa/screens/product_screen/product_manage_screen.dart';
import 'package:ibdaa/screens/product_screen/products_overview_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './models/vendors_provider.dart';
import 'package:ibdaa/style/colorapp.dart';
import './models/category_provider.dart';
import 'models/category_vendors_provider.dart';

import 'screens/login.dart';
import './models/users_provider.dart';
import './models/users.dart';
import './models/product_provider.dart';
import './models/my_worker_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (ctx) => VendorProvider()),
    ChangeNotifierProvider(create: (ctx) => CategoryProvider()),
    ChangeNotifierProvider(create: (ctx) => UserProvider()),
    ChangeNotifierProvider(create: (ctx) => Users()),
    ChangeNotifierProvider(create: (ctx) => ProductProvider()),
    ChangeNotifierProvider(create: (ctx) => CategoryVendorsProvider()),
    ChangeNotifierProvider(create: (ctx) => ColorStyle()),
    ChangeNotifierProvider(create: (ctx) => ProductProviderCart()),
    ChangeNotifierProvider(create: (ctx) => ProductProviderCart()),
    ChangeNotifierProvider(create: (ctx) => Product()),
    ChangeNotifierProvider(create: (ctx) => CartProvider()),
    ChangeNotifierProvider(create: (ctx) => Orders()),
    ChangeNotifierProvider(create: (ctx) => MyWorkerProvider()),
  ], child: MyApp()));
}

Color barDark = ColorStyle().barDarkApp;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: [Locale('en'), Locale('ar', 'JO')],
      locale: Locale('ar', 'JO'),
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const loginApp(),
      routes: {
        ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        CartScreen.routeName: (ctx) => CartScreen(),
        OrderScreen.routeName: (ctx) => OrderScreen(),
        ProductsOverviewScreen.routeName: (ctx) => ProductsOverviewScreen(),
        ProductManage.routeName: (ctx) => ProductManage(),
        EditProductScreen.routeName: (ctx) => EditProductScreen(),
      },
    );
  }
}
