import 'package:flutter/material.dart';
import 'package:projects_study/palette/palette.dart';
import 'package:projects_study/products/ui/pages/search_product_delegate.dart';
import 'package:projects_study/products/ui/widget/product.dart';

import 'search_product.dart';

class FoodTracker extends StatelessWidget {
  const FoodTracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Tracker'),
      ),
      body: const SingleChildScrollView(
        child: FoodMealTracker(),
      ),
    );
  }
}

class FoodMealTracker extends StatelessWidget {
  const FoodMealTracker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6),
      margin: EdgeInsets.all(14),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
      child: Column(
        children: [
          const Text('Breakfast', textAlign: TextAlign.left),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Palette.secundary,
            ),
            child: Column(
              children: [
              const Product(
              nameProduct: 'coca cola',
              serviceSize: '20',
              imageProduct: 'assets/snack.jpg',
              unit: 'g',
              calories: '100',
            ),
            MaterialButton(
                onPressed: () => Navigator.pushNamed(context, 'searchProduct'),
            //showSearch(context: context, delegate: SearchDelegateCopy())
            child: Container(
              padding: const EdgeInsets.only(
                  left: 26, right: 26, top: 6, bottom: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.orange,
              ),
              child: const Text('Add more meal'),
            ),
          ),
        ],
      ),
    ),]
    ,
    )
    ,
    );
  }
}
