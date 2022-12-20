import 'package:flutter/material.dart';
import 'package:projects_study/search_products/ui/widget/product.dart';

class ProductsProvider extends ChangeNotifier {
  List<Product> productsLunch = [];
  List<Product> productsDinner = [];
  List<Product> productsBreakfast = [];
  List<Product> productSack = [];

  void validateQuery(String query) {}
}
