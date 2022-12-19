import 'package:projects_study/products/model/product_model.dart';
import 'package:projects_study/products/model/search_product_model.dart';
import 'package:projects_study/products/service/search_product_service.dart';

abstract class ListSearchProductUseCase {
  Future<List<Product>> call(String query);
}

class ProductsListUC implements ListSearchProductUseCase {
  final ProductService _searchProductService;

  ProductsListUC(this._searchProductService);

  @override
  Future<List<Product>> call(String query) async {
    final List<Product> responseSearchProduct = [];
    try {
      final response = await _searchProductService.fetchSearchProducts(query);
      final productsSearch = SearchProduct.fromMap(response);
      final data = productsSearch.products;

      for (var i in data) {
        responseSearchProduct.add(i);
      }
    } catch (mistake) {
      print(mistake.toString());
    }
    return responseSearchProduct;
  }
}
