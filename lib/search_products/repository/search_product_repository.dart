import 'dart:async';
import 'package:http/http.dart' as http;

import 'dart:convert' as convert;

class ProductRepository {
  static const baseUrl = 'world.openfoodfacts.org';
  static const segment = '/cgi/search.pl';
  static const json = true;
  static const action = 'process';
  static const fields = 'product_name,code,image_url,nutriments,serving_size';

  Future<Map<String, dynamic>> fetchSearchProducts(String query) async {
    //todo: this entitie get list product
    final url = Uri.https(baseUrl, segment, {
      'action': action,
      'json': '1',
      'search_simple': '1',
      'search_terms': query,
      'fields': fields,
    });
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return convert.jsonDecode(response.body) as Map<String, dynamic>;
    }
    return {};
  }
}

// https://world.openfoodfacts.org/cgi/search.pl?
// search_terms=greek colours&
// action=process&search_simple=1&
// fields=product_name,code,image_url,nutriments,serving_size&
// json=1
