import 'package:flutter/material.dart';
import 'package:projects_study/home/model/food_items_model.dart';

class ListFoodRepository {
  void foods = <FoodItemsModel>[
    FoodItemsModel(
      id: 0,
      image: 'assets/breakfast.jpg',
      nameMeal: 'Breakfast',
      iconButton: Icons.remove_red_eye,
    ),
    FoodItemsModel(
      id: 1,
      image: 'assets/lunch.jpg',
      nameMeal: 'Lunch',
      iconButton: Icons.remove_red_eye,
    ),
    FoodItemsModel(
      id: 2,
      image: 'assets/dinner.jpg',
      nameMeal: 'Dinner',
      iconButton: Icons.remove_red_eye,
    ),
    FoodItemsModel(
      id: 3,
      image: 'assets/snack.jpg',
      nameMeal: 'Snack',
      iconButton: Icons.remove_red_eye,
    ),
  ];
}
