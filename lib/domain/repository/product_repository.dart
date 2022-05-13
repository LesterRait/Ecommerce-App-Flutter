import 'package:ecommerce/domain/entity/product.dart';
import 'package:ecommerce/domain/provider/product_provider.dart';

class ProductRepository {
  final ProductProvider _blogProvider = ProductProvider();
  Future<List<Product>> getAllProduct(String name) =>
      _blogProvider.getProduct(name);
}
