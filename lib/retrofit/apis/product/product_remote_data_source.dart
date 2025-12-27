import 'package:dartz/dartz.dart';
import 'package:flutter_network_client_sample/retrofit/apis/product/product_api.dart';

class ProductRemoteDataSource {
  final ProductApi _productApi;

  ProductRemoteDataSource(this._productApi);

  Future<Either<ProductListResponse, Exception>> getProducts(int limit, int skip) {
    return _productApi.getProducts(limit, skip);
  }
}
