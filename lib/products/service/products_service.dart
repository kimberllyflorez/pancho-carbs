import 'dart:async';
import 'package:http/http.dart' as http;

class ProductService {

  static const baseUrl = 'world.openfoodfacts.org';
  static const segment = 'cgi/search.pl';
  static const json = true;
  static const action = 'process';
  static const fields = 'product_name,code,image_url,nutriments,serving_size';

// https://world.openfoodfacts.org/cgi/search.pl?search_terms=greek colours&action=process&search_simple=1&fields=product_name,code,image_url,nutriments,serving_size&json=1

Future<String> getJsonData(String searchTerms) async {


  final url = Uri.https(baseUrl, segment, {
    'action': action,
    'json': '1',
    'search_simple': '1',
    'search_terms': searchTerms,
    'fields': fields,

  });
  final response = await http.get(url);
  return response.body;
}



}