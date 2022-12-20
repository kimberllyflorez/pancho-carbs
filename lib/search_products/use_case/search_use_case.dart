import 'package:projects_study/search_products/model/product_model.dart';
import 'package:projects_study/search_products/model/search_product_model.dart';
import 'package:projects_study/search_products/repository/search_product_repository.dart';

abstract class SearchProductUseCase {
  Future<List<Product>> call(String query);
}

class ProductsListUC implements SearchProductUseCase {
  final ProductRepository _searchProductService;

  ProductsListUC(this._searchProductService);

  @override
  Future<List<Product>> call(String query) async {
    List<Product> responseSearchProduct = [];
    try {
      final response = await _searchProductService.fetchSearchProducts(query);
      final productsSearch = SearchProduct.fromMap(response);
      responseSearchProduct = productsSearch.products;
    } catch (error) {
      print(error.toString());
    }
    return responseSearchProduct;
  }
}
