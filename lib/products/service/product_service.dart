import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:projects_study/products/model/product_model.dart';
import 'package:projects_study/products/model/search_product_model.dart';



class ProductService {
  static const baseUrl = 'world.openfoodfacts.org';
  static const segment = 'cgi/search.pl';
  static const json = true;
  static const action = 'process';
  static const fields = 'product_name,code,image_url,nutriments,serving_size';



  Future<List<Product>> searchProducts(String query) async {
    final url = Uri.https(baseUrl, segment, {
      'action': action,
      'json': '1',
      'search_simple': '1',
      'search_terms': query,
      'fields': fields,
    });
    final response = await http.get(url);
    final data = SearchProduct.fromJson(response.body);
    return data.products;
  }
}

// https://world.openfoodfacts.org/cgi/search.pl?
// search_terms=greek colours&
// action=process&search_simple=1&
// fields=product_name,code,image_url,nutriments,serving_size&
// json=1
