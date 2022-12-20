import 'package:flutter/material.dart';
import 'package:projects_study/home/provider/food_items_provider.dart';
import 'package:projects_study/search_products/ui/widget/food_item_tacker.dart';
import 'package:provider/provider.dart';

class FoodTracker extends StatelessWidget {
  const FoodTracker({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final meal = context.read<FoodItemsProvider>().meals;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Tracker'),
      ),
      body: ListView.builder(
        //TODO create from id of meal
        physics: const NeverScrollableScrollPhysics(),
        itemCount: meal.length,
        itemBuilder: (BuildContext context, int index) {
          return FoodMealTracker(nameFoodTracker: meal[index].nameMeal);
        },
      ),
    );
  }
}
