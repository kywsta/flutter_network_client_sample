import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_network_client_sample/retrofit/constants/network_constants.dart';
import 'package:flutter_network_client_sample/retrofit/utils/retrofit_api_call_adapter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter/foundation.dart';

part 'product_api.freezed.dart';
part 'product_api.g.dart';

@RestApi(
  baseUrl: NetworkConstants.baseUrl,
  parser: Parser.FlutterCompute,
  callAdapter: RetrofitApiCallAdapter,
)
abstract class ProductApi {
  factory ProductApi(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _ProductApi;

  @GET(NetworkConstants.products)
  Future<Either<ProductListResponse, Exception>> getProducts(
    @Path('limit') int limit,
    @Path('skip') int skip,
  );
}

ProductListResponse deserializeProductListResponse(Map<String, dynamic> json) =>
    ProductListResponse.fromJson(json);

Product deserializeProduct(Map<String, dynamic> json) => Product.fromJson(json);
List<Product> deserializeProductList(List<Map<String, dynamic>> json) =>
    json.map((json) => Product.fromJson(json)).toList();

@freezed
abstract class ProductListResponse with _$ProductListResponse {
  const factory ProductListResponse({
    required List<Product> products,
    required int total,
    required int skip,
    required int limit,
  }) = _ProductListResponse;

  factory ProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductListResponseFromJson(json);
}

@freezed
abstract class Product with _$Product {
  const factory Product({
    required int id,
    required String title,
    required String description,
    required String category,
    required int price,
    required int discountPercentage,
    required int rating,
    required int stock,
    required List<String> tags,
    String? brand,
    required String sku,
    double? weight,
    ProductDimensions? dimensions,
    String? warrantyInformation,
    required String shippingInformation,
    required String availabilityStatus,
    required List<ProductReview> reviews,
    required String returnPolicy,
    required int minimumOrderQuantity,
    Map<String, dynamic>? meta,
    required String thumbnail,
    required List<String> images,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
abstract class ProductDimensions with _$ProductDimensions {
  const factory ProductDimensions({
    required double width,
    required double height,
    required double depth,
  }) = _ProductDimensions;

  factory ProductDimensions.fromJson(Map<String, dynamic> json) =>
      _$ProductDimensionsFromJson(json);
}

@freezed
abstract class ProductReview with _$ProductReview {
  const factory ProductReview({
    required double rating,
    required String comment,
    required DateTime date,
    required String reviewerName,
    required String reviewerEmail,
  }) = _ProductReview;

  factory ProductReview.fromJson(Map<String, dynamic> json) =>
      _$ProductReviewFromJson(json);
}
