import 'package:flutter/material.dart';
import 'package:projects_study/home/provider/food_items_provider.dart';
import 'package:projects_study/palette/palette.dart';
import 'package:projects_study/products/ui/widget/product.dart';
import 'package:provider/provider.dart';

class FoodMealTracker extends StatelessWidget {
  final String nameFoodTracker;

  const FoodMealTracker({
    Key? key,
    required this.nameFoodTracker,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 6),
      margin: const EdgeInsets.all(14),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
      child: Column(
        children: [
          Text(nameFoodTracker, textAlign: TextAlign.left),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Palette.secundary,
            ),
            child: Column(
              children: [
                const Product(
                  //todo lista productos
                  nameProduct: 'coca cola',
                  serviceSize: '20',
                  imageProduct: 'assets/snack.jpg',
                  unit: 'g',
                  calories: '100',
                ),
                MaterialButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, 'searchProduct'),
                  child: Container(
                    padding: const EdgeInsets.only(
                      left: 26,
                      right: 26,
                      top: 6,
                      bottom: 6,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.orange,
                    ),
                    child: const Text('Add more meal'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
