


import 'package:flutter/material.dart';
import 'package:projects_study/products/ui/widget/product.dart';

class ProductsProvider extends ChangeNotifier{
  List<Product> productSelect = [];
  List<String> productos =[
    'bread','chicken', 'chips', 'mushroom'
  ];
  void validateQuery(String query){
  }
}



