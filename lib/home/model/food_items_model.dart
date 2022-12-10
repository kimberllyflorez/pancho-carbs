import 'package:flutter/material.dart';

class FoodItemsModel {

  String image;
  String nameMeal;
  IconData iconButton;

  FoodItemsModel({
    required  this.iconButton,
    required  this.image,
    required  this.nameMeal,
  });
}