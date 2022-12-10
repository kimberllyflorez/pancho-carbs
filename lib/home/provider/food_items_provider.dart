import 'package:flutter/material.dart';
import 'package:projects_study/home/model/food_items_model.dart';

class FoodItemsProvider extends ChangeNotifier {
  List<FoodItemsModel> meals = [];

  FoodItemsProvider() {
    listFood();
  }

  void listFood() {
    meals = <FoodItemsModel>[
      FoodItemsModel(
        image: 'assets/breakfast.jpg',
        nameMeal: 'Breakfast',
        iconButton: Icons.remove_red_eye,
      ),
      FoodItemsModel(
        image: 'assets/lunch.jpg',
        nameMeal: 'Lunch',
        iconButton: Icons.ac_unit_rounded,
      ),
      FoodItemsModel(
        image: 'assets/dinner.jpg',
        nameMeal: 'Dinner',
        iconButton: Icons.ac_unit_rounded,
      ),
      FoodItemsModel(
        image: 'assets/snack.jpg',
        nameMeal: 'Snack',
        iconButton: Icons.ac_unit_rounded,
      ),
    ];
  }

}