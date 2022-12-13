import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:projects_study/products/model/product_model.dart';
import 'package:projects_study/products/service/product_service.dart';

class SearchProductProvider extends ChangeNotifier {
  List<Product> products = [];

  Future<List<Product>> getSearchProducts(String query) async {
    products = await ProductService().searchProducts(query);
   return products;
  }



}
