import 'package:flutter_network_client_sample/retrofit/apis/product/product_api.dart';
import 'package:flutter_network_client_sample/retrofit/apis/product/product_remote_data_source.dart';

class ProductRepository {
  final ProductRemoteDataSource _productRemoteDataSource;

  ProductRepository(this._productRemoteDataSource);

  Future<List<Product>> getProducts(int limit, int skip) async {
    final result = await _productRemoteDataSource.getProducts(limit, skip);
    return result.fold((l) {
      return l.products;
    }, (r) {
      throw r;
    });
  }
}
