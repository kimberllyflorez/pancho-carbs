import 'package:flutter/material.dart';
import 'package:projects_study/data_user/provider/get_data_provider.dart';
import 'package:projects_study/data_user/ui/pages/pages.dart';
import 'package:projects_study/home/provider/food_items_provider.dart';
import 'package:projects_study/home/ui/pages/home_pg.dart';
import 'package:projects_study/products/ui/pages/search_product.dart';
import 'package:provider/provider.dart';

import 'products/provider/products_provider.dart';
import 'products/provider/search_product_provider.dart';
import 'products/ui/pages/food_tracker.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GetDataUserProvider()),
        ChangeNotifierProvider(create: (_)=>FoodItemsProvider()),
        ChangeNotifierProvider(create: (_)=> ProductsProvider()),
        ChangeNotifierProvider(create: (_)=> SearchProductProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white10,
        primarySwatch: Colors.grey,
      ),
      home: const FirstWelcomePg(),
      routes: {
        'firstPage': (_) => const FirstWelcomePg(),
        'agePg': (_) => const AgePg(),
        'weightPg': (_) => const WeightPg(),
        'heightPg': (_) => const HeightPg(),
        'genderPg': (_) => const GenderPg(),
        'activity': (_) => const ActivityLabelPg(),
        'home': (_) => const HomePg(),
        'foodTracker':(_)=> const FoodTracker(),
        'searchProduct':(_)=> const SearchProduct()
      },
    );
  }
}
