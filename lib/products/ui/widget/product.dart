import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String nameProduct;
  final String imageProduct;
  final String serviceSize;
  final String unit;
  final String calories;

  const Product({
    Key? key,
    required this.nameProduct,
    required this.imageProduct,
    required this.serviceSize,
    required this.unit,
    required this.calories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(nameProduct),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(serviceSize),
                  Text(unit),
                  Text(calories),
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

