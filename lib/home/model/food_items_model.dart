import 'package:flutter/material.dart';
import 'package:projects_study/products/model/product_model.dart';

class FoodItemsModel {
  String image;
  String nameMeal;
  IconData iconButton;
  List<Product>? productsSelected;

  FoodItemsModel({
    this.productsSelected,
    required  this.iconButton,
    required  this.image,
    required  this.nameMeal,
  });
}