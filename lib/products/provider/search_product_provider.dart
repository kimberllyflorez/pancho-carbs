import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:projects_study/products/model/product_model.dart';
import 'package:projects_study/products/service/search_product_service.dart';
import 'package:projects_study/utils/debounce.dart';

class SearchProductProvider extends ChangeNotifier {
  List<Product> products = [];
  bool isLoading = true;

  final debounce = Debounce(duration: const Duration(milliseconds: 500));

  Future<List<Product>> getSearchProducts(String query) async {
    isLoading = true;
    debounce.value = '';
    debounce.onValue = (value) async {
      if (query.isNotEmpty) {
        final response = await ProductService().searchProducts(query);
        products = response;
        print('entra servicio$products');
        isLoading = false;
        notifyListeners();
      }
    };
    final timer = Timer.periodic(const Duration(milliseconds: 300), (_) {
      debounce.value = query;
    });
    Future.delayed(const Duration(milliseconds: 301)).then(
          (_) => timer.cancel(),
    );
    return products;
  }
}
