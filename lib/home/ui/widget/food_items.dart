import 'package:flutter/material.dart';
import 'package:projects_study/home/provider/food_items_provider.dart';
import 'package:projects_study/pancho_theme/pancho_theme.dart';
import 'package:provider/provider.dart';

class FoodItems extends StatelessWidget {
  const FoodItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final meals = context.read<FoodItemsProvider>().meals;
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: meals.length,
      itemBuilder: (_, int i) {
        return FoodItem(
          nameItem: meals[i].nameMeal,
          buttonItem: Icon(meals[i].iconButton),
          imageItem: meals[i].image,
          onPress: () {
            Navigator.pushNamed(context, 'foodTracker');
          },
        );
      },
    );
  }
}

class FoodItem extends StatelessWidget {
  final String nameItem;
  final Icon buttonItem;
  final Function() onPress;
  final String imageItem;

  const FoodItem({
    Key? key,
    required this.nameItem,
    required this.buttonItem,
    required this.imageItem,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(14),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: PanchoTheme.secundary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: SizedBox(
              width: 60,
              height: 70,
              child: Image.asset(
                imageItem,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                nameItem,
                style: const TextStyle(fontSize: 18),
              ),
              const Text('Total cal'),//Todo
            ],
          ),
          IconButton(
            onPressed: onPress,
            icon: buttonItem,
          ),
        ],
      ),
    );
  }
}
