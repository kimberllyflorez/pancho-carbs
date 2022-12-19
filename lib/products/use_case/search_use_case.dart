import 'package:projects_study/products/model/product_model.dart';
import 'package:projects_study/products/model/search_product_model.dart';
import 'package:projects_study/products/repository/search_product_service.dart';

abstract class SearchProductUseCase {

  //def de la clase,
  Future<List<Product>> call(String query);
}

class ProductsListUC implements SearchProductUseCase {
  final ProductService _searchProductService;

  ProductsListUC(this._searchProductService);

  @override
  //iplementacion de los metodos de la clase principal.
  Future<List<Product>> call(String query) async {
    List<Product> responseSearchProduct = []; //todo molde almacen de prpduc
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
