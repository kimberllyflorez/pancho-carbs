import 'package:flutter/material.dart';
import 'package:projects_study/home/ui/widget/food_items.dart';
import 'package:projects_study/home/ui/widget/statistics.dart';

class HomePg extends StatelessWidget {
  const HomePg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Today'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Statistics(),
            Text('Food Items'),
            FoodItems(),
          ],
        ),
      ),
    );
  }
}
