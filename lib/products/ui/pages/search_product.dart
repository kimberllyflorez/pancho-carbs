import 'package:flutter/material.dart';
import 'package:projects_study/products/model/product_model.dart';
import 'package:projects_study/products/provider/products_provider.dart';

import 'package:projects_study/products/ui/widget/BarSearch.dart';
import 'package:provider/provider.dart';

class SearchProduct extends StatelessWidget {
  const SearchProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items =  context.read<ProductsProvider>().productos;

    return Scaffold(
        body: Column(
      children: [
          BarSearch(),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('${items[index]}'),
              );
            },
          ),
        ),
      ],
    ));
  }
}
