import 'package:flutter/material.dart';
import 'package:projects_study/search_products/model/product_model.dart';

class FoodItemsModel {
  int id;
  String image;
  String nameMeal;
  IconData iconButton;
  List<Product>? productsSelected;

  FoodItemsModel({
    this.productsSelected,
    required this.id,
    required this.iconButton,
    required this.image,
    required this.nameMeal,
  });
}
