import 'package:flutter/material.dart';
import 'package:projects_study/palette/palette.dart';

class Product extends StatelessWidget {
  final String nameProduct;
  final String imageProduct;
  final String? serviceSize;
  final String unit;
  final String? calories;

  const Product({
    Key? key,
    required this.nameProduct,
    required this.imageProduct,
    this.serviceSize,
    required this.unit,
    this.calories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.secundary,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(nameProduct),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(serviceSize ?? '9090'),
                  Text(unit),
                  Text(calories ?? '9090'),
                ],
              )
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              width: 60,
              height: 60,
              child: Image.asset(imageProduct),
            ),
          ),
        ],
      ),
    );
  }
}
