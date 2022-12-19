import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:projects_study/products/model/product_model.dart';

import 'package:projects_study/products/use_case/search_use_case.dart';
import 'package:projects_study/utils/debounce.dart';

class SearchProductProvider extends ChangeNotifier {
  final ProductsListUC _listProductsListUC;
  List<Product> products = [];
  bool isLoading = true;

  final debounce = Debounce(duration: const Duration(milliseconds: 500));

  SearchProductProvider(this._listProductsListUC);

  Future<void> getSearchProducts(String query) async {
    isLoading = true;
    debounce.value = '';
    debounce.onValue = (value) async {
      if (query.isNotEmpty) {
        final response = _listProductsListUC.call(query);
        products = response as List<Product>;
        print('entry service$products');
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
  }
}
