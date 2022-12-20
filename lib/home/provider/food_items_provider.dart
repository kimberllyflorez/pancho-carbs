import 'package:flutter/material.dart';
import 'package:projects_study/home/use_case/food_items_use_case.dart';
import 'package:projects_study/home/model/food_items_model.dart';

class FoodItemsProvider extends ChangeNotifier {
  final FoodItemsUseCase _foodItemsList;

  FoodItemsProvider(this._foodItemsList);

  List<FoodItemsModel> meals = [];

  Future<List<FoodItemsModel>> getListFoodItems() async {
    meals = await _foodItemsList.call();
    notifyListeners();
    return meals;
  }
}
