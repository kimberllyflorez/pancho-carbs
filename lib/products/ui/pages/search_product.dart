import 'package:flutter/material.dart';

import 'package:projects_study/products/provider/search_product_provider.dart';

import 'package:projects_study/products/ui/widget/BarSearch.dart';
import 'package:projects_study/products/ui/widget/product.dart';
import 'package:provider/provider.dart';

class SearchProduct extends StatefulWidget {
  const SearchProduct({Key? key}) : super(key: key);

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  late final TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final items = context.watch<SearchProductProvider>().products;

    return Scaffold(
        body: Column(
      children: [
        BarSearch(
          controller: controller,
          function: (controller) {
            Provider.of<SearchProductProvider>(context, listen: false)
                .getSearchProducts(controller);
          },
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, index) {
              print('ui products ${items[index].productName}');
              return Product(
                nameProduct: items[index].productName ?? '',
                imageProduct: items[index].imageUrl ?? '',
                serviceSize: items[index].nutriments?.energy.toString(),
                unit: '',
                calories: items[index].nutriments?.energy100G.toString(),
              );
            },
          ),
        ),
      ],
    ));
  }
}
