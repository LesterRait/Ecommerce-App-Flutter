import 'dart:convert';

import 'package:ecommerce/configuration/configuration.dart';
import 'package:ecommerce/domain/entity/product.dart';
import 'package:http/http.dart' as http;

class ProductProvider {
  final config = Configuration();

  Future<List<Product>> getProduct(String name) async {
    final response = await http.get(Uri.parse(
      '${config.url}/wp-json/wc/v3/products?search=$name&consumer_key=${config.key}&consumer_secret=${config.secret}',
    ));

    if (response.statusCode == 200) {
      final List<dynamic> productJson = json.decode(response.body);
      return productJson.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Error fetching product');
    }
  }
}
